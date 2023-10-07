// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

/*
    Extra XEN quotes:

    "When you realize nothing is lacking, the whole world belongs to you." - Lao Tzu
    "Each morning, we are born again. What we do today is what matters most." - Buddha
    "If you are depressed, you are living in the past." - Lao Tzu
    "In true dialogue, both sides are willing to change." - Thich Nhat Hanh
    "The spirit of the individual is determined by his domination thought habits." - Bruce Lee
    "Be the path. Do not seek it." - Yara Tschallener
    "Bow to no one but your own divinity." - Satya
    "With insight there is hope for awareness, and with awareness there can be change." - Tom Kenyon
    "The opposite of depression isn't happiness, it is purpose." - Derek Sivers
    "If you can't, you must." - Tony Robbins
    “When you are grateful, fear disappears and abundance appears.” - Lao Tzu
    “It is in your moments of decision that your destiny is shaped.” - Tony Robbins
    "Surmounting difficulty is the crucible that forms character." - Tony Robbins
    "Three things cannot be long hidden: the sun, the moon, and the truth." - Buddha
    "What you are is what you have been. What you’ll be is what you do now." - Buddha
    "The best way to take care of our future is to take care of the present moment." - Thich Nhat Hanh
*/

/**
   @dev  a library to supply a XEN string data based on params
*/
library StringData {
    uint256 public constant QUOTES_COUNT = 12;
    uint256 public constant QUOTE_LENGTH = 66;
    bytes public constant QUOTES =
        bytes(
            '"The mind is everything. What you think, you become."- Buda       '
            '"What we are is the result of what we have thought."-Nikola Tesla '
            '"Failures are simply steps towards success".- Elon Musk.          '
            '"The only way to do great work is to love what you do."-Steve Jobs'
            '"Hatred can only be overcome by love."- Buda                      '
            '"Simplicity is the ultimate sophistication." -Leonardo da Vinci.  '
            '"Be the change you wish to see in the world."-Mahatma Gandhi.     '
            '"Curiosity is more important than knowledge." - Albert Einstein   '
            '"There is no path to happiness:happiness is the path."- Buda      '
            '"What we are is the result of what we have thought."-Nikola Tesla '
            '"Peace comes from within. Do not seek it without."- Buda          '
            '"A man must learn to sail in strong winds." - Elon Musk.          '
        );
      
            
            
    uint256 public constant CLASSES_COUNT = 14;
    uint256 public constant CLASSES_NAME_LENGTH = 10;
    bytes public constant CLASSES =
        bytes(
            "Ruby      "
            "Opal      "
            "Topaz     "
            "Emerald   "
            "Aquamarine"
            "Sapphire  "
            "Amethyst  "
            "Xenturion "
            "Limited   "
            "Rare      "
            "Epic      "
            "Legendary "
            "Exotic    "
            "Xunicorn  "
        );

    /**
        @dev    Solidity doesn't yet support slicing of byte arrays anywhere outside of calldata,
                therefore we make a hack by supplying our local constant packed string array as calldata
    */
    function getQuote(bytes calldata quotes, uint256 index) external pure returns (string memory) {
        if (index > QUOTES_COUNT - 1) return string(quotes[0:QUOTE_LENGTH]);
        return string(quotes[index * QUOTE_LENGTH:(index + 1) * QUOTE_LENGTH]);
    }

    function getClassName(bytes calldata names, uint256 index) external pure returns (string memory) {
        if (index < CLASSES_COUNT) return string(names[index * CLASSES_NAME_LENGTH:(index + 1) * CLASSES_NAME_LENGTH]);
        return "";
    }
}