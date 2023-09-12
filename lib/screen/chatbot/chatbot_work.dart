List message = [];

addUserMessage({required msg}) {
  message.add(
    {"msg": msg, "name": "Kashif"},
  );
}

addBotMessage({required msg}) {
  message.add(
    {
      "msg": msg,
      "name": "bot",
    },
  );
}
