// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import $ from 'jquery'
import axios from 'axios'
import { csrfToken } from 'rails-ujs'

axios.defaults.headers.common['X-CSRF-Token'] = csrfToken()

document.addEventListener('DOMContentLoaded', () => {
  const dataset = $('#movie-show').data()
  const movieId = dataset.movieId
  axios.get(`/movies/${movieId}/favorite`)
    .then((response) => {
      window.alert(' apiKey をパラメータとして受け取り、リクエストされたムービーの詳細を構造化された JSON で返します')
      console.log(response)
    })

    $('.fovorite_btn').on('click', () => {
      axios.post(`/movies/${movieId}/favorite`)
      .then((response) => {
        window.alert('お気に入りの映画を追加します')
        console.log(response)
      })
      .catch((error) => {
        window.alert('Error')
        console.log(error)
      })
    })
} )

document.addEventListener('DOMContentLoaded', () => {

    $('.favorites-all').on('click', () => {
      axios.get(`/favorites`)
      .then((response) => {
        window.alert('ユーザーが以前にお気に入りにした映画を返します')
          console.log(response)
        })
        .catch((e) => {
          window.alert('Error')
          console.log(e)
        })
    })

})




