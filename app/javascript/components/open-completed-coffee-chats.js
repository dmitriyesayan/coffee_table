const openCompletedCoffeeChats = () => {
  const completedCoffeeChatsTab = document.querySelector('.completed-coffee-chats');
  const completedCoffeeChatsList = document.querySelector('.completed-coffee-chats-list');
  if (completedCoffeeChatsTab) {
    completedCoffeeChatsTab.addEventListener('click', () => {
      if (completedCoffeeChatsList) {
        completedCoffeeChatsList.classList.toggle('invisible');
        completedCoffeeChatsList.classList.toggle('margin-bottom-24');
      }
    });
  }
}

export { openCompletedCoffeeChats }
