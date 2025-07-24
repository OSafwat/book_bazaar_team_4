// Tested on Stuido 3T script editor

use bookbazaar_reviews;

print("Inserting a new review...");
const newReview = {
  book_id: 2,
  reviewer: "Grace Miller",
  rating: 4,
  comment: "Well-written and engaging.",
  created_at: new Date()
};
const insertResult = db.reviews.insertOne(newReview);
print("Inserted review ID:");
printjson(insertResult.insertedId);

print("\nAll reviews:");
const allReviews = db.reviews.find();
allReviews.forEach(doc => printjson(doc));

print("\nReviews with rating >= 4:");
const topReviews = db.reviews.find({ rating: { $gte: 4 } });
topReviews.forEach(doc => printjson(doc));

print("\nUpdating review for Grace Miller...");
const updateResult = db.reviews.updateOne(
  { reviewer: "Grace Miller" },
  { $set: { comment: "Well-written, engaging, and informative." } }
);
print("Update result:");
printjson(updateResult);

print("\nDeleting reviews with rating < 3...");
const deleteResult = db.reviews.deleteMany({ rating: { $lt: 3 } });
print("Delete result:");
printjson(deleteResult);

print("\nFinal state of reviews collection:");
db.reviews.find().forEach(doc => printjson(doc));
