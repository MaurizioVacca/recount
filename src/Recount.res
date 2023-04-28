module Recount = {
    /**
   * External dependencies/optional parameters are:
   * - rootId (where to get text from);
   * - ?wpm (words per minute, optional set to 200) - hint: offering preset? e.g. medium=265
   * - ?template: an HTML template literal
   * @returns
   * - 
   */
  type readingSpeed = {
    slow: int,
    relaxed: int,
    moderate: int,
    fast: int,
    lightSpeed: int,
    ludicrousSpeed: int,
  }

  type result = {
    readingTime: int,
    numOfWords: int,
  }

  let readingSpeed = {
    slow: 200,
    relaxed: 230,
    moderate: 260,
    fast: 290,
    lightSpeed: 320,
    ludicrousSpeed: 350
  }

  let toEmptyChar = %re("/[.,\/#!$%\^;:{}=\-_`~()]/g")
  let toSpace = %re("/[\s\u00A0\n]/g")
  let emptyChar = ""
  let space = " "

  let isNotEmpty = val => val != emptyChar

  let getReadingData = (~readingSpeed = readingSpeed.slow, text) => {
    let numOfWords = text
      ->String.replaceRegExp(toEmptyChar, emptyChar)
      ->String.replaceRegExp(toSpace, space)
      ->String.split(space)
      ->Array.filter(isNotEmpty)
      ->Array.length

    let result = {
      readingTime: numOfWords / readingSpeed,
      numOfWords
    }

    result
  }
}