
const initSlider = () => {
  const level = {
    1 : "beginner",
    2 : "novice",
    3 : "intermediate",
    4 : "advanced",
    5 : "professional"
  }
  console.log('hello')
  let ratingInput = document.querySelector("#user_experience")
  console.log(ratingInput)
  if (ratingInput) {
    ratingInput.addEventListener('change', () => {
      console.log(ratingInput.value)
      let sliderText = document.querySelector('#experience-label')
      let rating = ratingInput.value
      sliderText.innerHTML = level[rating]
    })
  }
}
export { initSlider };
