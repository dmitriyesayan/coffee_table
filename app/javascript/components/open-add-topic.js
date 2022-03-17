const openAddTopic = () => {
  const addTopic = document.querySelector('.add-topic');
  const addTopicBox = document.querySelector('.add-topic-box')
  if (addTopic) {
    addTopic.addEventListener('click', () => {
      addTopicBox.classList.toggle('invisible');
    })
  }
}

export { openAddTopic };
