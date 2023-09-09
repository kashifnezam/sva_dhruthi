// ---------------  Quiz Part -------------------

List quizQuestion = [
  // physical
  "How would you describe your natural body build?",
  "Do you have temperature preferences, such as being sensitive to cold or heat?",
  "Are you naturally more active or prefer a slower pace?",

  // mental
  "How is your sleep quality and duration?",
  "How would you describe your memory and mental clarity?",
  "What's your typical emotional temperament?",

  // Social
  "Describe your communication style and its impact on others.",
  "Tell us about your friendships and the qualities that define them.",

  // Emotional
  "Share your emotional strengths and how they contribute to your well-being.",

  // Digestive
  "How would you describe your regularity when it comes to bowel movements?",
  "How often do you experience thirst and how do you usually respond to it?",
  "How would you describe your usual appetite?"
];

List quizOptions = [
  //------------ physical------------
  // 1
  "Slender",
  "Well-proportioned and muscular build",
  "Sturdy and robust body frame",

  // 2
  "Sensitive to both",
  "Heat-sensitive",
  "Cold-sensitive",

  // 3
  "Naturally active",
  "Moderately active",
  "Prefers a relaxed pace",

  // -----------mental---------
  // 1
  "Variable and light",
  "Sound and refreshing",
  "Ample and steady",

  // 2
  "Sharp but occasional lapses",
  "Strong and reliable",
  "Steady but slower recall",

  //3
  "Creative and adaptable",
  "Determined and focused",
  "Calm and steady",

  // ---------Social--------
  // 1
  "Expressive and talkative",
  "Clear and assertive",
  "Thoughtful and calm",

  // 2
  "Diverse and creative",
  "Driven and ambitious",
  "Loyal and stable",

  // -------Emotional----------
  // 1
  "Sensitive and empathetic",
  "Passionate and intense",
  "Calm and stable",

  // ---------Digestive----------
  // 1
  "Irregular",
  "Regular",
  "Steady but slow",

  // 2
  "Often thirsty, prefers warm drinks",
  "Easily thirsty, enjoys cool beverages",
  "Moderate thirst, room temperature drinks",

  // 3
  "Irregular, forgets to eat",
  "Strong and consistent",
  "Steady not quick to get hungry",
];

Map<String, String> myQuizResult = {}; // just for database to send

//  ---------------------- KYC Part   -----------------------------

List kycQuestions = [
  "Select your comfortable language",
  "Select your gender",
  "What is your age group?",
  "Why are you here?",
  "Have you already consulted any doctor?",
  "What Diet do you follow?",
];

List kycOptions = [
  // 1------
  "English",
  "Hindi",
  "Kannada",
  "Tamil",
  "Telugu",

  // 2----
  "Male",
  "Female",
  "Others/Rather not say",

  // 3----
  "14-25",
  "26-35",
  "35-45",
  "46-55",
  "56-65",
  "65+",

  // 4-----
  "Diabetes",
  "Hyper Thyroid",
  "Hypo Thyroid",
  "Low Blood Pressure",
  "High Blood Pressure",
  "Others",

  // 5-----
  "Yes",
  "No",

  // 6---
  "Vegetarian",
  "Non-Vegetarian",
  "Gluten free",
  "Dairy free",
];
