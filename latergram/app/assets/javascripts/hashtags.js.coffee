# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$ ->
  $('#search').on 'click', ->
    hashtag = $('#hashtag').val()
    $.ajax(
      type: "GET"
      dataType: "jsonp"
      url: 'https://api.instagram.com/v1/tags/' + hashtag + '/media/recent?access_token=520343.1fb234f.8ea879e56808493cb6be7a5840f5fa77'
      ).done (data) ->
        $('.photos').append "Results for " + "<strong>" + hashtag + ": </strong>" + JST["templates/hashtags"](photos : data["data"] || [])