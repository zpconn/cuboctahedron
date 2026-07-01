import Cuboctahedron.Search.BellmanPotential
import Cuboctahedron.Search.FaceLabelLanguage

set_option maxHeartbeats 2000000
set_option maxRecDepth 4096
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unnecessarySeqFocus false

namespace Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base

open Cuboctahedron

/-!
Generated numeric Bellman evaluator base.

This base contains only compact state/label identifiers, the potential,
and the deterministic evaluator. Validity is checked in bounded shards.
-/

abbrev stateCount : Nat := 970
abbrev State : Type := Nat

def graphPotential : State -> Int
  | 0 => -176
  | 1 => -137
  | 2 => -137
  | 3 => -137
  | 4 => -137
  | 5 => -137
  | 6 => -137
  | 7 => -137
  | 8 => -137
  | 9 => -137
  | 10 => -137
  | 11 => -137
  | 12 => -137
  | 13 => -137
  | 14 => -137
  | 15 => -137
  | 16 => -137
  | 17 => -137
  | 18 => -137
  | 19 => -137
  | 20 => -137
  | 21 => -137
  | 22 => -137
  | 23 => -137
  | 24 => -137
  | 25 => -137
  | 26 => -137
  | 27 => -137
  | 28 => -137
  | 29 => -137
  | 30 => -137
  | 31 => -137
  | 32 => -137
  | 33 => -137
  | 34 => -137
  | 35 => -119
  | 36 => -119
  | 37 => -119
  | 38 => -119
  | 39 => -119
  | 40 => -119
  | 41 => -119
  | 42 => -119
  | 43 => -119
  | 44 => -119
  | 45 => 13
  | 46 => 13
  | 47 => 13
  | 48 => 13
  | 49 => -111
  | 50 => -111
  | 51 => -111
  | 52 => -111
  | 53 => -111
  | 54 => -111
  | 55 => -111
  | 56 => -111
  | 57 => -111
  | 58 => -111
  | 59 => 31
  | 60 => 31
  | 61 => -217
  | 62 => 31
  | 63 => -217
  | 64 => -217
  | 65 => -217
  | 66 => 31
  | 67 => 31
  | 68 => 31
  | 69 => 31
  | 70 => 2
  | 71 => 2
  | 72 => 2
  | 73 => 2
  | 74 => 2
  | 75 => -218
  | 76 => 2
  | 77 => 2
  | 78 => 2
  | 79 => 2
  | 80 => 2
  | 81 => -218
  | 82 => 2
  | 83 => 2
  | 84 => -104
  | 85 => -104
  | 86 => -104
  | 87 => -104
  | 88 => -228
  | 89 => 10
  | 90 => 10
  | 91 => 10
  | 92 => -239
  | 93 => 9
  | 94 => 9
  | 95 => -239
  | 96 => 9
  | 97 => 9
  | 98 => -239
  | 99 => -239
  | 100 => 9
  | 101 => 123
  | 102 => 123
  | 103 => -174
  | 104 => -174
  | 105 => -174
  | 106 => -174
  | 107 => -174
  | 108 => -174
  | 109 => -174
  | 110 => -280
  | 111 => -156
  | 112 => -156
  | 113 => -166
  | 114 => -101
  | 115 => -101
  | 116 => -101
  | 117 => -101
  | 118 => -101
  | 119 => -101
  | 120 => -101
  | 121 => -101
  | 122 => -101
  | 123 => -101
  | 124 => -101
  | 125 => -101
  | 126 => -101
  | 127 => -101
  | 128 => -101
  | 129 => -101
  | 130 => -101
  | 131 => -101
  | 132 => -101
  | 133 => -101
  | 134 => -101
  | 135 => -101
  | 136 => -101
  | 137 => -101
  | 138 => -101
  | 139 => -101
  | 140 => -101
  | 141 => -101
  | 142 => -101
  | 143 => -101
  | 144 => -101
  | 145 => -101
  | 146 => -101
  | 147 => -101
  | 148 => -101
  | 149 => -101
  | 150 => -101
  | 151 => -101
  | 152 => -101
  | 153 => -101
  | 154 => -101
  | 155 => -101
  | 156 => -101
  | 157 => -101
  | 158 => -101
  | 159 => -101
  | 160 => -101
  | 161 => -101
  | 162 => -101
  | 163 => -101
  | 164 => -83
  | 165 => -83
  | 166 => -83
  | 167 => -83
  | 168 => -83
  | 169 => -83
  | 170 => -83
  | 171 => -83
  | 172 => -83
  | 173 => -83
  | 174 => -83
  | 175 => -83
  | 176 => -207
  | 177 => -207
  | 178 => -207
  | 179 => -207
  | 180 => -207
  | 181 => -207
  | 182 => -207
  | 183 => -207
  | 184 => -207
  | 185 => -207
  | 186 => -207
  | 187 => -93
  | 188 => -93
  | 189 => -93
  | 190 => -93
  | 191 => -93
  | 192 => -93
  | 193 => -93
  | 194 => -93
  | 195 => -93
  | 196 => -93
  | 197 => -93
  | 198 => -93
  | 199 => -93
  | 200 => -93
  | 201 => -93
  | 202 => -94
  | 203 => -94
  | 204 => -94
  | 205 => -94
  | 206 => -94
  | 207 => -94
  | 208 => -94
  | 209 => -94
  | 210 => -94
  | 211 => -94
  | 212 => -94
  | 213 => -94
  | 214 => -218
  | 215 => -218
  | 216 => -218
  | 217 => -218
  | 218 => -218
  | 219 => -218
  | 220 => -218
  | 221 => -218
  | 222 => -218
  | 223 => 20
  | 224 => 20
  | 225 => 20
  | 226 => 20
  | 227 => 20
  | 228 => 20
  | 229 => 133
  | 230 => 133
  | 231 => 133
  | 232 => 133
  | 233 => 133
  | 234 => 133
  | 235 => 133
  | 236 => -270
  | 237 => -270
  | 238 => -270
  | 239 => -270
  | 240 => -270
  | 241 => -270
  | 242 => -270
  | 243 => -270
  | 244 => -270
  | 245 => -156
  | 246 => -156
  | 247 => -197
  | 248 => -197
  | 249 => -197
  | 250 => -197
  | 251 => -197
  | 252 => -197
  | 253 => -197
  | 254 => -197
  | 255 => -197
  | 256 => -197
  | 257 => -197
  | 258 => -197
  | 259 => -197
  | 260 => -197
  | 261 => -197
  | 262 => -197
  | 263 => -197
  | 264 => -197
  | 265 => -197
  | 266 => -197
  | 267 => -197
  | 268 => -197
  | 269 => -197
  | 270 => -197
  | 271 => -197
  | 272 => -197
  | 273 => -197
  | 274 => -197
  | 275 => -197
  | 276 => -197
  | 277 => -197
  | 278 => -197
  | 279 => -197
  | 280 => -197
  | 281 => -197
  | 282 => -197
  | 283 => -197
  | 284 => -197
  | 285 => -197
  | 286 => -197
  | 287 => -197
  | 288 => -197
  | 289 => -197
  | 290 => -197
  | 291 => -197
  | 292 => -197
  | 293 => -197
  | 294 => -197
  | 295 => -197
  | 296 => -197
  | 297 => -197
  | 298 => -197
  | 299 => -197
  | 300 => -197
  | 301 => -197
  | 302 => -197
  | 303 => -197
  | 304 => -197
  | 305 => -197
  | 306 => -197
  | 307 => -197
  | 308 => -197
  | 309 => -197
  | 310 => -197
  | 311 => -197
  | 312 => -83
  | 313 => -83
  | 314 => -83
  | 315 => -83
  | 316 => -83
  | 317 => -83
  | 318 => -83
  | 319 => -83
  | 320 => -83
  | 321 => -83
  | 322 => -83
  | 323 => -83
  | 324 => -83
  | 325 => -83
  | 326 => -83
  | 327 => -83
  | 328 => -83
  | 329 => -83
  | 330 => -83
  | 331 => -83
  | 332 => -83
  | 333 => -83
  | 334 => -83
  | 335 => -83
  | 336 => -83
  | 337 => -83
  | 338 => -83
  | 339 => -83
  | 340 => -83
  | 341 => -83
  | 342 => 30
  | 343 => 30
  | 344 => 30
  | 345 => 30
  | 346 => 30
  | 347 => 30
  | 348 => 30
  | 349 => 30
  | 350 => 30
  | 351 => 30
  | 352 => 30
  | 353 => 30
  | 354 => 30
  | 355 => 30
  | 356 => 30
  | 357 => 30
  | 358 => 30
  | 359 => 30
  | 360 => 30
  | 361 => 30
  | 362 => 30
  | 363 => 30
  | 364 => 30
  | 365 => -146
  | 366 => -146
  | 367 => -146
  | 368 => -146
  | 369 => -146
  | 370 => -146
  | 371 => -146
  | 372 => -146
  | 373 => -146
  | 374 => -146
  | 375 => -146
  | 376 => -73
  | 377 => -73
  | 378 => -73
  | 379 => -73
  | 380 => -73
  | 381 => -73
  | 382 => -73
  | 383 => -73
  | 384 => -73
  | 385 => -73
  | 386 => -73
  | 387 => -73
  | 388 => -73
  | 389 => -73
  | 390 => -73
  | 391 => -73
  | 392 => -73
  | 393 => -73
  | 394 => -73
  | 395 => -73
  | 396 => -73
  | 397 => -73
  | 398 => -73
  | 399 => -73
  | 400 => -73
  | 401 => -73
  | 402 => -73
  | 403 => -73
  | 404 => -73
  | 405 => -73
  | 406 => -73
  | 407 => -73
  | 408 => -73
  | 409 => -73
  | 410 => -73
  | 411 => -73
  | 412 => -73
  | 413 => -73
  | 414 => -73
  | 415 => -73
  | 416 => -73
  | 417 => -73
  | 418 => -73
  | 419 => -73
  | 420 => -73
  | 421 => -73
  | 422 => -73
  | 423 => -73
  | 424 => -73
  | 425 => -73
  | 426 => -73
  | 427 => -73
  | 428 => -73
  | 429 => -73
  | 430 => -73
  | 431 => -73
  | 432 => -73
  | 433 => -73
  | 434 => -73
  | 435 => -73
  | 436 => -73
  | 437 => -73
  | 438 => -73
  | 439 => -73
  | 440 => -73
  | 441 => -73
  | 442 => -73
  | 443 => -73
  | 444 => -73
  | 445 => -73
  | 446 => -73
  | 447 => -73
  | 448 => -73
  | 449 => -73
  | 450 => -73
  | 451 => -73
  | 452 => -73
  | 453 => -73
  | 454 => -73
  | 455 => -73
  | 456 => -73
  | 457 => -73
  | 458 => -73
  | 459 => -73
  | 460 => -73
  | 461 => -73
  | 462 => -73
  | 463 => -73
  | 464 => -73
  | 465 => -73
  | 466 => -73
  | 467 => -73
  | 468 => -73
  | 469 => -73
  | 470 => -73
  | 471 => -73
  | 472 => -73
  | 473 => -73
  | 474 => -73
  | 475 => -73
  | 476 => -73
  | 477 => -73
  | 478 => -73
  | 479 => -73
  | 480 => -73
  | 481 => -73
  | 482 => -73
  | 483 => -73
  | 484 => -73
  | 485 => -73
  | 486 => -73
  | 487 => -73
  | 488 => -73
  | 489 => -73
  | 490 => -73
  | 491 => -73
  | 492 => 0
  | 493 => 0
  | 494 => 0
  | 495 => 0
  | 496 => 0
  | 497 => 0
  | 498 => 0
  | 499 => 0
  | 500 => 0
  | 501 => 0
  | 502 => 0
  | 503 => 0
  | 504 => 0
  | 505 => 0
  | 506 => 0
  | 507 => 0
  | 508 => 0
  | 509 => 0
  | 510 => 0
  | 511 => 0
  | 512 => 0
  | 513 => 0
  | 514 => 0
  | 515 => 0
  | 516 => 0
  | 517 => 0
  | 518 => 0
  | 519 => 0
  | 520 => 0
  | 521 => 0
  | 522 => 0
  | 523 => 0
  | 524 => 0
  | 525 => 0
  | 526 => 0
  | 527 => 0
  | 528 => 0
  | 529 => 0
  | 530 => 0
  | 531 => 0
  | 532 => 0
  | 533 => 0
  | 534 => 0
  | 535 => 0
  | 536 => 0
  | 537 => 0
  | 538 => 0
  | 539 => 0
  | 540 => 0
  | 541 => 0
  | 542 => 0
  | 543 => 0
  | 544 => 0
  | 545 => 0
  | 546 => 0
  | 547 => 0
  | 548 => 0
  | 549 => 0
  | 550 => 0
  | 551 => 0
  | 552 => 0
  | 553 => 0
  | 554 => 0
  | 555 => 0
  | 556 => 0
  | 557 => 0
  | 558 => 0
  | 559 => 0
  | 560 => 0
  | 561 => 0
  | 562 => 0
  | 563 => 0
  | 564 => 0
  | 565 => 0
  | 566 => 0
  | 567 => 0
  | 568 => 0
  | 569 => 0
  | 570 => 0
  | 571 => 0
  | 572 => 0
  | 573 => 0
  | 574 => 0
  | 575 => 0
  | 576 => 0
  | 577 => 0
  | 578 => 0
  | 579 => 0
  | 580 => 0
  | 581 => 0
  | 582 => 0
  | 583 => 0
  | 584 => 0
  | 585 => 0
  | 586 => 0
  | 587 => 0
  | 588 => 0
  | 589 => 0
  | 590 => 0
  | 591 => 0
  | 592 => 0
  | 593 => 0
  | 594 => 0
  | 595 => 0
  | 596 => 0
  | 597 => 0
  | 598 => 0
  | 599 => 0
  | 600 => 0
  | 601 => 0
  | 602 => 0
  | 603 => 0
  | 604 => 0
  | 605 => 0
  | 606 => 0
  | 607 => 0
  | 608 => -279
  | 609 => -103
  | 610 => -206
  | 611 => -293
  | 612 => -155
  | 613 => -158
  | 614 => -293
  | 615 => -261
  | 616 => -396
  | 617 => -104
  | 618 => -82
  | 619 => -283
  | 620 => -293
  | 621 => -169
  | 622 => -275
  | 623 => -396
  | 624 => -210
  | 625 => -499
  | 626 => -137
  | 627 => -137
  | 628 => -386
  | 629 => -302
  | 630 => -294
  | 631 => -368
  | 632 => -272
  | 633 => -200
  | 634 => -436
  | 635 => -178
  | 636 => -407
  | 637 => -159
  | 638 => -389
  | 639 => -273
  | 640 => -265
  | 641 => -239
  | 642 => -386
  | 643 => -448
  | 644 => -324
  | 645 => -306
  | 646 => -489
  | 647 => -251
  | 648 => -251
  | 649 => -375
  | 650 => -375
  | 651 => -481
  | 652 => -233
  | 653 => -233
  | 654 => -233
  | 655 => -416
  | 656 => -284
  | 657 => -482
  | 658 => -262
  | 659 => -290
  | 660 => -390
  | 661 => -434
  | 662 => -368
  | 663 => -426
  | 664 => -376
  | 665 => -364
  | 666 => -164
  | 667 => -142
  | 668 => -255
  | 669 => -503
  | 670 => -255
  | 671 => -353
  | 672 => -229
  | 673 => -273
  | 674 => -95
  | 675 => -438
  | 676 => -438
  | 677 => -552
  | 678 => -544
  | 679 => -420
  | 680 => -270
  | 681 => -365
  | 682 => -365
  | 683 => -365
  | 684 => -347
  | 685 => -347
  | 686 => -479
  | 687 => -479
  | 688 => -479
  | 689 => -479
  | 690 => -471
  | 691 => -471
  | 692 => -471
  | 693 => -471
  | 694 => -445
  | 695 => -445
  | 696 => -245
  | 697 => -197
  | 698 => -197
  | 699 => -197
  | 700 => -380
  | 701 => -380
  | 702 => -416
  | 703 => -416
  | 704 => -358
  | 705 => -578
  | 706 => -358
  | 707 => -254
  | 708 => -354
  | 709 => -354
  | 710 => -398
  | 711 => -398
  | 712 => -398
  | 713 => -332
  | 714 => -376
  | 715 => -116
  | 716 => 2
  | 717 => -219
  | 718 => -219
  | 719 => -467
  | 720 => -219
  | 721 => -209
  | 722 => -205
  | 723 => -85
  | 724 => 49
  | 725 => -534
  | 726 => -534
  | 727 => -534
  | 728 => -552
  | 729 => -508
  | 730 => -384
  | 731 => -126
  | 732 => -461
  | 733 => -461
  | 734 => -461
  | 735 => -461
  | 736 => -461
  | 737 => -461
  | 738 => -461
  | 739 => -461
  | 740 => -461
  | 741 => -311
  | 742 => -311
  | 743 => -335
  | 744 => -435
  | 745 => -435
  | 746 => -435
  | 747 => -435
  | 748 => -435
  | 749 => -435
  | 750 => -479
  | 751 => -479
  | 752 => -479
  | 753 => -479
  | 754 => -479
  | 755 => -479
  | 756 => -53
  | 757 => -301
  | 758 => -301
  | 759 => -101
  | 760 => -53
  | 761 => -53
  | 762 => -53
  | 763 => -344
  | 764 => -344
  | 765 => -344
  | 766 => -344
  | 767 => -344
  | 768 => -344
  | 769 => -322
  | 770 => -322
  | 771 => -542
  | 772 => -322
  | 773 => -230
  | 774 => -254
  | 775 => -254
  | 776 => -354
  | 777 => -88
  | 778 => -188
  | 779 => -26
  | 780 => -76
  | 781 => -295
  | 782 => -75
  | 783 => -75
  | 784 => -323
  | 785 => -75
  | 786 => -65
  | 787 => 15
  | 788 => 59
  | 789 => 85
  | 790 => -498
  | 791 => -498
  | 792 => -498
  | 793 => -498
  | 794 => -264
  | 795 => -364
  | 796 => -240
  | 797 => 18
  | 798 => -425
  | 799 => -425
  | 800 => -425
  | 801 => -425
  | 802 => -425
  | 803 => -425
  | 804 => -425
  | 805 => -425
  | 806 => -425
  | 807 => -425
  | 808 => -425
  | 809 => -425
  | 810 => -425
  | 811 => -425
  | 812 => -425
  | 813 => -425
  | 814 => -425
  | 815 => -167
  | 816 => -167
  | 817 => -167
  | 818 => -191
  | 819 => -191
  | 820 => -191
  | 821 => -191
  | 822 => -191
  | 823 => -291
  | 824 => -291
  | 825 => -291
  | 826 => -291
  | 827 => -291
  | 828 => -191
  | 829 => -191
  | 830 => -291
  | 831 => -291
  | 832 => -157
  | 833 => 91
  | 834 => -157
  | 835 => -157
  | 836 => -157
  | 837 => 91
  | 838 => 91
  | 839 => 91
  | 840 => -344
  | 841 => -344
  | 842 => -344
  | 843 => -344
  | 844 => -344
  | 845 => -178
  | 846 => -178
  | 847 => -178
  | 848 => -398
  | 849 => -344
  | 850 => -178
  | 851 => -88
  | 852 => -44
  | 853 => -110
  | 854 => -66
  | 855 => 10
  | 856 => 10
  | 857 => 69
  | 858 => -151
  | 859 => 69
  | 860 => 69
  | 861 => -179
  | 862 => 69
  | 863 => 87
  | 864 => -29
  | 865 => 95
  | 866 => -11
  | 867 => -354
  | 868 => -354
  | 869 => -354
  | 870 => -354
  | 871 => -354
  | 872 => -220
  | 873 => -96
  | 874 => -264
  | 875 => 54
  | 876 => -281
  | 877 => -281
  | 878 => -281
  | 879 => -281
  | 880 => -281
  | 881 => -281
  | 882 => -281
  | 883 => -281
  | 884 => -281
  | 885 => -281
  | 886 => -281
  | 887 => -281
  | 888 => -281
  | 889 => -281
  | 890 => -281
  | 891 => -281
  | 892 => -281
  | 893 => -281
  | 894 => -281
  | 895 => -281
  | 896 => -281
  | 897 => -281
  | 898 => -281
  | 899 => -281
  | 900 => -281
  | 901 => -281
  | 902 => -23
  | 903 => -23
  | 904 => -23
  | 905 => -191
  | 906 => -191
  | 907 => -191
  | 908 => -191
  | 909 => -191
  | 910 => -191
  | 911 => -191
  | 912 => -191
  | 913 => -147
  | 914 => -147
  | 915 => -147
  | 916 => -147
  | 917 => -147
  | 918 => -147
  | 919 => -147
  | 920 => -147
  | 921 => 127
  | 922 => -121
  | 923 => 127
  | 924 => -121
  | 925 => -121
  | 926 => -121
  | 927 => 127
  | 928 => 127
  | 929 => 127
  | 930 => 127
  | 931 => -34
  | 932 => -34
  | 933 => -34
  | 934 => -34
  | 935 => -254
  | 936 => -34
  | 937 => -56
  | 938 => -56
  | 939 => -56
  | 940 => -56
  | 941 => -16
  | 942 => -16
  | 943 => -104
  | 944 => -8
  | 945 => -8
  | 946 => -114
  | 947 => -114
  | 948 => 10
  | 949 => 105
  | 950 => 105
  | 951 => -115
  | 952 => 105
  | 953 => 105
  | 954 => -143
  | 955 => 105
  | 956 => -125
  | 957 => -125
  | 958 => -1
  | 959 => 113
  | 960 => -210
  | 961 => -210
  | 962 => -210
  | 963 => -210
  | 964 => -210
  | 965 => -210
  | 966 => -184
  | 967 => -60
  | 968 => -192
  | 969 => -42
  | _ => 0

def rootState : State := (0 : State)

abbrev labelCount : Nat := 14
abbrev SmokeLabel : Type := Nat
-- label 0000: face=tmmm|pair=d111
-- label 0001: face=tmmp|pair=d11m
-- label 0002: face=tmpm|pair=d1m1
-- label 0003: face=tmpp|pair=dm11
-- label 0004: face=tpmm|pair=dm11
-- label 0005: face=tpmp|pair=d1m1
-- label 0006: face=tppm|pair=d11m
-- label 0007: face=tppp|pair=d111
-- label 0008: face=xm|pair=x
-- label 0009: face=xp|pair=x
-- label 0010: face=ym|pair=y
-- label 0011: face=yp|pair=y
-- label 0012: face=zm|pair=z
-- label 0013: face=zp|pair=z

def smokeLabelOfFace : Face -> SmokeLabel
  | Face.xp => (9 : SmokeLabel)
  | Face.xm => (8 : SmokeLabel)
  | Face.yp => (11 : SmokeLabel)
  | Face.ym => (10 : SmokeLabel)
  | Face.zp => (13 : SmokeLabel)
  | Face.zm => (12 : SmokeLabel)
  | Face.tppp => (7 : SmokeLabel)
  | Face.tppm => (6 : SmokeLabel)
  | Face.tpmp => (5 : SmokeLabel)
  | Face.tmpp => (3 : SmokeLabel)
  | Face.tpmm => (4 : SmokeLabel)
  | Face.tmpm => (2 : SmokeLabel)
  | Face.tmmp => (1 : SmokeLabel)
  | Face.tmmm => (0 : SmokeLabel)

def smokeLabelsOfSeq (seq : Step14 -> Face) : List SmokeLabel :=
  faceLabelsInContributionOrder smokeLabelOfFace seq

-- graph-global deterministic eval transitions: 1054
def graphSmokeNext_s0000 : SmokeLabel -> Option (State × Int)
  | 8 => some ((608 : State), (103 : Int))
  | 10 => some ((609 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0001 : SmokeLabel -> Option (State × Int)
  | 7 => some ((114 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0002 : SmokeLabel -> Option (State × Int)
  | 7 => some ((117 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0003 : SmokeLabel -> Option (State × Int)
  | 7 => some ((119 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0004 : SmokeLabel -> Option (State × Int)
  | 7 => some ((120 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0005 : SmokeLabel -> Option (State × Int)
  | 7 => some ((122 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0006 : SmokeLabel -> Option (State × Int)
  | 7 => some ((123 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0007 : SmokeLabel -> Option (State × Int)
  | 7 => some ((124 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0008 : SmokeLabel -> Option (State × Int)
  | 7 => some ((126 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0009 : SmokeLabel -> Option (State × Int)
  | 7 => some ((127 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0010 : SmokeLabel -> Option (State × Int)
  | 7 => some ((128 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0011 : SmokeLabel -> Option (State × Int)
  | 7 => some ((129 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0012 : SmokeLabel -> Option (State × Int)
  | 7 => some ((130 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0013 : SmokeLabel -> Option (State × Int)
  | 7 => some ((132 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0014 : SmokeLabel -> Option (State × Int)
  | 7 => some ((133 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0015 : SmokeLabel -> Option (State × Int)
  | 7 => some ((134 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0016 : SmokeLabel -> Option (State × Int)
  | 7 => some ((135 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0017 : SmokeLabel -> Option (State × Int)
  | 7 => some ((136 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0018 : SmokeLabel -> Option (State × Int)
  | 7 => some ((138 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0019 : SmokeLabel -> Option (State × Int)
  | 7 => some ((139 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0020 : SmokeLabel -> Option (State × Int)
  | 7 => some ((140 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0021 : SmokeLabel -> Option (State × Int)
  | 7 => some ((141 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0022 : SmokeLabel -> Option (State × Int)
  | 7 => some ((148 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0023 : SmokeLabel -> Option (State × Int)
  | 7 => some ((150 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0024 : SmokeLabel -> Option (State × Int)
  | 7 => some ((151 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0025 : SmokeLabel -> Option (State × Int)
  | 7 => some ((152 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0026 : SmokeLabel -> Option (State × Int)
  | 7 => some ((153 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0027 : SmokeLabel -> Option (State × Int)
  | 7 => some ((154 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0028 : SmokeLabel -> Option (State × Int)
  | 7 => some ((156 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0029 : SmokeLabel -> Option (State × Int)
  | 7 => some ((157 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0030 : SmokeLabel -> Option (State × Int)
  | 7 => some ((158 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0031 : SmokeLabel -> Option (State × Int)
  | 7 => some ((159 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0032 : SmokeLabel -> Option (State × Int)
  | 7 => some ((160 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0033 : SmokeLabel -> Option (State × Int)
  | 7 => some ((162 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0034 : SmokeLabel -> Option (State × Int)
  | 7 => some ((163 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0035 : SmokeLabel -> Option (State × Int)
  | 12 => some ((115 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0036 : SmokeLabel -> Option (State × Int)
  | 12 => some ((116 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0037 : SmokeLabel -> Option (State × Int)
  | 12 => some ((118 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0038 : SmokeLabel -> Option (State × Int)
  | 12 => some ((121 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0039 : SmokeLabel -> Option (State × Int)
  | 12 => some ((125 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0040 : SmokeLabel -> Option (State × Int)
  | 12 => some ((131 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0041 : SmokeLabel -> Option (State × Int)
  | 12 => some ((137 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0042 : SmokeLabel -> Option (State × Int)
  | 12 => some ((142 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0043 : SmokeLabel -> Option (State × Int)
  | 12 => some ((149 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0044 : SmokeLabel -> Option (State × Int)
  | 12 => some ((155 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0045 : SmokeLabel -> Option (State × Int)
  | 2 => some ((167 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0046 : SmokeLabel -> Option (State × Int)
  | 2 => some ((169 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0047 : SmokeLabel -> Option (State × Int)
  | 2 => some ((171 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0048 : SmokeLabel -> Option (State × Int)
  | 2 => some ((175 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0049 : SmokeLabel -> Option (State × Int)
  | 2 => some ((176 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0050 : SmokeLabel -> Option (State × Int)
  | 2 => some ((178 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0051 : SmokeLabel -> Option (State × Int)
  | 2 => some ((179 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0052 : SmokeLabel -> Option (State × Int)
  | 2 => some ((180 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0053 : SmokeLabel -> Option (State × Int)
  | 2 => some ((181 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0054 : SmokeLabel -> Option (State × Int)
  | 2 => some ((182 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0055 : SmokeLabel -> Option (State × Int)
  | 2 => some ((183 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0056 : SmokeLabel -> Option (State × Int)
  | 2 => some ((184 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0057 : SmokeLabel -> Option (State × Int)
  | 2 => some ((185 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0058 : SmokeLabel -> Option (State × Int)
  | 2 => some ((186 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0059 : SmokeLabel -> Option (State × Int)
  | 1 => some ((187 : State), (-124 : Int))
  | 12 => some ((164 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0060 : SmokeLabel -> Option (State × Int)
  | 1 => some ((190 : State), (-124 : Int))
  | 12 => some ((165 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0061 : SmokeLabel -> Option (State × Int)
  | 1 => some ((191 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0062 : SmokeLabel -> Option (State × Int)
  | 1 => some ((192 : State), (-124 : Int))
  | 12 => some ((166 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0063 : SmokeLabel -> Option (State × Int)
  | 1 => some ((193 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0064 : SmokeLabel -> Option (State × Int)
  | 1 => some ((194 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0065 : SmokeLabel -> Option (State × Int)
  | 1 => some ((195 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0066 : SmokeLabel -> Option (State × Int)
  | 1 => some ((196 : State), (-124 : Int))
  | 12 => some ((170 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0067 : SmokeLabel -> Option (State × Int)
  | 1 => some ((198 : State), (-124 : Int))
  | 12 => some ((172 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0068 : SmokeLabel -> Option (State × Int)
  | 1 => some ((200 : State), (-124 : Int))
  | 12 => some ((173 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0069 : SmokeLabel -> Option (State × Int)
  | 1 => some ((201 : State), (-124 : Int))
  | 12 => some ((174 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0070 : SmokeLabel -> Option (State × Int)
  | 1 => some ((202 : State), (96 : Int))
  | 11 => some ((115 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0071 : SmokeLabel -> Option (State × Int)
  | 1 => some ((203 : State), (96 : Int))
  | 11 => some ((116 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0072 : SmokeLabel -> Option (State × Int)
  | 1 => some ((204 : State), (96 : Int))
  | 11 => some ((118 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0073 : SmokeLabel -> Option (State × Int)
  | 1 => some ((205 : State), (96 : Int))
  | 11 => some ((121 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0074 : SmokeLabel -> Option (State × Int)
  | 1 => some ((206 : State), (96 : Int))
  | 11 => some ((125 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0075 : SmokeLabel -> Option (State × Int)
  | 11 => some ((137 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0076 : SmokeLabel -> Option (State × Int)
  | 1 => some ((207 : State), (96 : Int))
  | 11 => some ((142 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0077 : SmokeLabel -> Option (State × Int)
  | 1 => some ((208 : State), (96 : Int))
  | 11 => some ((143 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0078 : SmokeLabel -> Option (State × Int)
  | 1 => some ((209 : State), (96 : Int))
  | 11 => some ((144 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0079 : SmokeLabel -> Option (State × Int)
  | 1 => some ((210 : State), (96 : Int))
  | 11 => some ((145 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0080 : SmokeLabel -> Option (State × Int)
  | 1 => some ((211 : State), (96 : Int))
  | 11 => some ((146 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0081 : SmokeLabel -> Option (State × Int)
  | 11 => some ((147 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0082 : SmokeLabel -> Option (State × Int)
  | 1 => some ((212 : State), (96 : Int))
  | 11 => some ((155 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0083 : SmokeLabel -> Option (State × Int)
  | 1 => some ((213 : State), (96 : Int))
  | 11 => some ((161 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0084 : SmokeLabel -> Option (State × Int)
  | 2 => some ((226 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0085 : SmokeLabel -> Option (State × Int)
  | 2 => some ((228 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0086 : SmokeLabel -> Option (State × Int)
  | 11 => some ((164 : State), (-21 : Int))
  | 13 => some ((214 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0087 : SmokeLabel -> Option (State × Int)
  | 11 => some ((168 : State), (-21 : Int))
  | 13 => some ((220 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0088 : SmokeLabel -> Option (State × Int)
  | 11 => some ((177 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0089 : SmokeLabel -> Option (State × Int)
  | 11 => some ((188 : State), (103 : Int))
  | 12 => some ((223 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0090 : SmokeLabel -> Option (State × Int)
  | 11 => some ((189 : State), (103 : Int))
  | 12 => some ((224 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0091 : SmokeLabel -> Option (State × Int)
  | 11 => some ((197 : State), (103 : Int))
  | 12 => some ((227 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0092 : SmokeLabel -> Option (State × Int)
  | 10 => some ((214 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0093 : SmokeLabel -> Option (State × Int)
  | 1 => some ((230 : State), (-124 : Int))
  | 10 => some ((215 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0094 : SmokeLabel -> Option (State × Int)
  | 1 => some ((231 : State), (-124 : Int))
  | 10 => some ((216 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0095 : SmokeLabel -> Option (State × Int)
  | 10 => some ((217 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0096 : SmokeLabel -> Option (State × Int)
  | 1 => some ((232 : State), (-124 : Int))
  | 10 => some ((218 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0097 : SmokeLabel -> Option (State × Int)
  | 1 => some ((233 : State), (-124 : Int))
  | 10 => some ((219 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0098 : SmokeLabel -> Option (State × Int)
  | 10 => some ((220 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0099 : SmokeLabel -> Option (State × Int)
  | 10 => some ((221 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0100 : SmokeLabel -> Option (State × Int)
  | 1 => some ((235 : State), (-124 : Int))
  | 10 => some ((222 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0101 : SmokeLabel -> Option (State × Int)
  | 10 => some ((223 : State), (103 : Int))
  | 13 => some ((229 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0102 : SmokeLabel -> Option (State × Int)
  | 10 => some ((225 : State), (103 : Int))
  | 13 => some ((234 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0103 : SmokeLabel -> Option (State × Int)
  | 7 => some ((236 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0104 : SmokeLabel -> Option (State × Int)
  | 7 => some ((238 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0105 : SmokeLabel -> Option (State × Int)
  | 7 => some ((239 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0106 : SmokeLabel -> Option (State × Int)
  | 7 => some ((240 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0107 : SmokeLabel -> Option (State × Int)
  | 7 => some ((241 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0108 : SmokeLabel -> Option (State × Int)
  | 7 => some ((243 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0109 : SmokeLabel -> Option (State × Int)
  | 7 => some ((244 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0110 : SmokeLabel -> Option (State × Int)
  | 4 => some ((246 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0111 : SmokeLabel -> Option (State × Int)
  | 13 => some ((237 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0112 : SmokeLabel -> Option (State × Int)
  | 13 => some ((242 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0113 : SmokeLabel -> Option (State × Int)
  | 8 => some ((199 : State), (-73 : Int))
  | 12 => some ((245 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0114 : SmokeLabel -> Option (State × Int)
  | 3 => some ((247 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0115 : SmokeLabel -> Option (State × Int)
  | 3 => some ((248 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0116 : SmokeLabel -> Option (State × Int)
  | 3 => some ((251 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0117 : SmokeLabel -> Option (State × Int)
  | 3 => some ((253 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0118 : SmokeLabel -> Option (State × Int)
  | 3 => some ((254 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0119 : SmokeLabel -> Option (State × Int)
  | 3 => some ((256 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0120 : SmokeLabel -> Option (State × Int)
  | 3 => some ((257 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0121 : SmokeLabel -> Option (State × Int)
  | 3 => some ((258 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0122 : SmokeLabel -> Option (State × Int)
  | 3 => some ((260 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0123 : SmokeLabel -> Option (State × Int)
  | 3 => some ((261 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0124 : SmokeLabel -> Option (State × Int)
  | 3 => some ((262 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0125 : SmokeLabel -> Option (State × Int)
  | 3 => some ((263 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0126 : SmokeLabel -> Option (State × Int)
  | 3 => some ((265 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0127 : SmokeLabel -> Option (State × Int)
  | 3 => some ((266 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0128 : SmokeLabel -> Option (State × Int)
  | 3 => some ((267 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0129 : SmokeLabel -> Option (State × Int)
  | 3 => some ((268 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0130 : SmokeLabel -> Option (State × Int)
  | 3 => some ((269 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0131 : SmokeLabel -> Option (State × Int)
  | 3 => some ((270 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0132 : SmokeLabel -> Option (State × Int)
  | 3 => some ((271 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0133 : SmokeLabel -> Option (State × Int)
  | 3 => some ((272 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0134 : SmokeLabel -> Option (State × Int)
  | 3 => some ((273 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0135 : SmokeLabel -> Option (State × Int)
  | 3 => some ((274 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0136 : SmokeLabel -> Option (State × Int)
  | 3 => some ((278 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0137 : SmokeLabel -> Option (State × Int)
  | 3 => some ((279 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0138 : SmokeLabel -> Option (State × Int)
  | 3 => some ((281 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0139 : SmokeLabel -> Option (State × Int)
  | 3 => some ((282 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0140 : SmokeLabel -> Option (State × Int)
  | 3 => some ((283 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0141 : SmokeLabel -> Option (State × Int)
  | 3 => some ((285 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0142 : SmokeLabel -> Option (State × Int)
  | 3 => some ((286 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0143 : SmokeLabel -> Option (State × Int)
  | 3 => some ((288 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0144 : SmokeLabel -> Option (State × Int)
  | 3 => some ((289 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0145 : SmokeLabel -> Option (State × Int)
  | 3 => some ((290 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0146 : SmokeLabel -> Option (State × Int)
  | 3 => some ((291 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0147 : SmokeLabel -> Option (State × Int)
  | 3 => some ((292 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0148 : SmokeLabel -> Option (State × Int)
  | 3 => some ((293 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0149 : SmokeLabel -> Option (State × Int)
  | 3 => some ((294 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0150 : SmokeLabel -> Option (State × Int)
  | 3 => some ((296 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0151 : SmokeLabel -> Option (State × Int)
  | 3 => some ((297 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0152 : SmokeLabel -> Option (State × Int)
  | 3 => some ((298 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0153 : SmokeLabel -> Option (State × Int)
  | 3 => some ((299 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0154 : SmokeLabel -> Option (State × Int)
  | 3 => some ((300 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0155 : SmokeLabel -> Option (State × Int)
  | 3 => some ((301 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0156 : SmokeLabel -> Option (State × Int)
  | 3 => some ((303 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0157 : SmokeLabel -> Option (State × Int)
  | 3 => some ((304 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0158 : SmokeLabel -> Option (State × Int)
  | 3 => some ((305 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0159 : SmokeLabel -> Option (State × Int)
  | 3 => some ((306 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0160 : SmokeLabel -> Option (State × Int)
  | 3 => some ((308 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0161 : SmokeLabel -> Option (State × Int)
  | 3 => some ((309 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0162 : SmokeLabel -> Option (State × Int)
  | 3 => some ((310 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0163 : SmokeLabel -> Option (State × Int)
  | 3 => some ((311 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0164 : SmokeLabel -> Option (State × Int)
  | 13 => some ((249 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0165 : SmokeLabel -> Option (State × Int)
  | 13 => some ((250 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0166 : SmokeLabel -> Option (State × Int)
  | 13 => some ((255 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0167 : SmokeLabel -> Option (State × Int)
  | 13 => some ((275 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0168 : SmokeLabel -> Option (State × Int)
  | 13 => some ((276 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0169 : SmokeLabel -> Option (State × Int)
  | 13 => some ((277 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0170 : SmokeLabel -> Option (State × Int)
  | 13 => some ((280 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0171 : SmokeLabel -> Option (State × Int)
  | 13 => some ((284 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0172 : SmokeLabel -> Option (State × Int)
  | 13 => some ((287 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0173 : SmokeLabel -> Option (State × Int)
  | 13 => some ((295 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0174 : SmokeLabel -> Option (State × Int)
  | 13 => some ((302 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0175 : SmokeLabel -> Option (State × Int)
  | 13 => some ((307 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0176 : SmokeLabel -> Option (State × Int)
  | 0 => some ((322 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0177 : SmokeLabel -> Option (State × Int)
  | 0 => some ((323 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0178 : SmokeLabel -> Option (State × Int)
  | 0 => some ((326 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0179 : SmokeLabel -> Option (State × Int)
  | 0 => some ((327 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0180 : SmokeLabel -> Option (State × Int)
  | 0 => some ((328 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0181 : SmokeLabel -> Option (State × Int)
  | 0 => some ((329 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0182 : SmokeLabel -> Option (State × Int)
  | 0 => some ((330 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0183 : SmokeLabel -> Option (State × Int)
  | 0 => some ((331 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0184 : SmokeLabel -> Option (State × Int)
  | 0 => some ((338 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0185 : SmokeLabel -> Option (State × Int)
  | 0 => some ((339 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0186 : SmokeLabel -> Option (State × Int)
  | 0 => some ((341 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0187 : SmokeLabel -> Option (State × Int)
  | 12 => some ((312 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0188 : SmokeLabel -> Option (State × Int)
  | 12 => some ((313 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0189 : SmokeLabel -> Option (State × Int)
  | 12 => some ((314 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0190 : SmokeLabel -> Option (State × Int)
  | 12 => some ((315 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0191 : SmokeLabel -> Option (State × Int)
  | 12 => some ((316 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0192 : SmokeLabel -> Option (State × Int)
  | 12 => some ((317 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0193 : SmokeLabel -> Option (State × Int)
  | 12 => some ((318 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0194 : SmokeLabel -> Option (State × Int)
  | 12 => some ((319 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0195 : SmokeLabel -> Option (State × Int)
  | 12 => some ((320 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0196 : SmokeLabel -> Option (State × Int)
  | 12 => some ((321 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0197 : SmokeLabel -> Option (State × Int)
  | 12 => some ((332 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0198 : SmokeLabel -> Option (State × Int)
  | 12 => some ((333 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0199 : SmokeLabel -> Option (State × Int)
  | 12 => some ((334 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0200 : SmokeLabel -> Option (State × Int)
  | 12 => some ((335 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0201 : SmokeLabel -> Option (State × Int)
  | 12 => some ((336 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0202 : SmokeLabel -> Option (State × Int)
  | 3 => some ((342 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0203 : SmokeLabel -> Option (State × Int)
  | 3 => some ((346 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0204 : SmokeLabel -> Option (State × Int)
  | 3 => some ((348 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0205 : SmokeLabel -> Option (State × Int)
  | 3 => some ((349 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0206 : SmokeLabel -> Option (State × Int)
  | 3 => some ((351 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0207 : SmokeLabel -> Option (State × Int)
  | 3 => some ((355 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0208 : SmokeLabel -> Option (State × Int)
  | 3 => some ((357 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0209 : SmokeLabel -> Option (State × Int)
  | 3 => some ((358 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0210 : SmokeLabel -> Option (State × Int)
  | 3 => some ((359 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0211 : SmokeLabel -> Option (State × Int)
  | 3 => some ((360 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0212 : SmokeLabel -> Option (State × Int)
  | 3 => some ((361 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0213 : SmokeLabel -> Option (State × Int)
  | 3 => some ((364 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0214 : SmokeLabel -> Option (State × Int)
  | 11 => some ((249 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0215 : SmokeLabel -> Option (State × Int)
  | 11 => some ((250 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0216 : SmokeLabel -> Option (State × Int)
  | 11 => some ((252 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0217 : SmokeLabel -> Option (State × Int)
  | 11 => some ((255 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0218 : SmokeLabel -> Option (State × Int)
  | 11 => some ((259 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0219 : SmokeLabel -> Option (State × Int)
  | 11 => some ((264 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0220 : SmokeLabel -> Option (State × Int)
  | 11 => some ((276 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0221 : SmokeLabel -> Option (State × Int)
  | 11 => some ((280 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0222 : SmokeLabel -> Option (State × Int)
  | 11 => some ((302 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0223 : SmokeLabel -> Option (State × Int)
  | 11 => some ((313 : State), (103 : Int))
  | 13 => some ((343 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0224 : SmokeLabel -> Option (State × Int)
  | 11 => some ((314 : State), (103 : Int))
  | 13 => some ((344 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0225 : SmokeLabel -> Option (State × Int)
  | 11 => some ((324 : State), (103 : Int))
  | 13 => some ((353 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0226 : SmokeLabel -> Option (State × Int)
  | 11 => some ((325 : State), (103 : Int))
  | 13 => some ((354 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0227 : SmokeLabel -> Option (State × Int)
  | 11 => some ((332 : State), (103 : Int))
  | 13 => some ((356 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0228 : SmokeLabel -> Option (State × Int)
  | 11 => some ((340 : State), (103 : Int))
  | 13 => some ((363 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0229 : SmokeLabel -> Option (State × Int)
  | 10 => some ((343 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0230 : SmokeLabel -> Option (State × Int)
  | 10 => some ((345 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0231 : SmokeLabel -> Option (State × Int)
  | 10 => some ((347 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0232 : SmokeLabel -> Option (State × Int)
  | 10 => some ((350 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0233 : SmokeLabel -> Option (State × Int)
  | 10 => some ((352 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0234 : SmokeLabel -> Option (State × Int)
  | 10 => some ((353 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0235 : SmokeLabel -> Option (State × Int)
  | 10 => some ((362 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0236 : SmokeLabel -> Option (State × Int)
  | 5 => some ((365 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0237 : SmokeLabel -> Option (State × Int)
  | 5 => some ((366 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0238 : SmokeLabel -> Option (State × Int)
  | 5 => some ((368 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0239 : SmokeLabel -> Option (State × Int)
  | 5 => some ((369 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0240 : SmokeLabel -> Option (State × Int)
  | 5 => some ((370 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0241 : SmokeLabel -> Option (State × Int)
  | 5 => some ((371 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0242 : SmokeLabel -> Option (State × Int)
  | 5 => some ((372 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0243 : SmokeLabel -> Option (State × Int)
  | 5 => some ((373 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0244 : SmokeLabel -> Option (State × Int)
  | 5 => some ((375 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0245 : SmokeLabel -> Option (State × Int)
  | 8 => some ((334 : State), (-73 : Int))
  | 13 => some ((367 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0246 : SmokeLabel -> Option (State × Int)
  | 8 => some ((337 : State), (-73 : Int))
  | 13 => some ((374 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0247 : SmokeLabel -> Option (State × Int)
  | 1 => some ((376 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0248 : SmokeLabel -> Option (State × Int)
  | 1 => some ((378 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0249 : SmokeLabel -> Option (State × Int)
  | 1 => some ((380 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0250 : SmokeLabel -> Option (State × Int)
  | 1 => some ((384 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0251 : SmokeLabel -> Option (State × Int)
  | 1 => some ((386 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0252 : SmokeLabel -> Option (State × Int)
  | 1 => some ((388 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0253 : SmokeLabel -> Option (State × Int)
  | 1 => some ((389 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0254 : SmokeLabel -> Option (State × Int)
  | 1 => some ((391 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0255 : SmokeLabel -> Option (State × Int)
  | 1 => some ((393 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0256 : SmokeLabel -> Option (State × Int)
  | 1 => some ((394 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0257 : SmokeLabel -> Option (State × Int)
  | 1 => some ((395 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0258 : SmokeLabel -> Option (State × Int)
  | 1 => some ((397 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0259 : SmokeLabel -> Option (State × Int)
  | 1 => some ((399 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0260 : SmokeLabel -> Option (State × Int)
  | 1 => some ((400 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0261 : SmokeLabel -> Option (State × Int)
  | 1 => some ((401 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0262 : SmokeLabel -> Option (State × Int)
  | 1 => some ((402 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0263 : SmokeLabel -> Option (State × Int)
  | 1 => some ((404 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0264 : SmokeLabel -> Option (State × Int)
  | 1 => some ((406 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0265 : SmokeLabel -> Option (State × Int)
  | 1 => some ((407 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0266 : SmokeLabel -> Option (State × Int)
  | 1 => some ((408 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0267 : SmokeLabel -> Option (State × Int)
  | 1 => some ((409 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0268 : SmokeLabel -> Option (State × Int)
  | 1 => some ((410 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0269 : SmokeLabel -> Option (State × Int)
  | 1 => some ((411 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0270 : SmokeLabel -> Option (State × Int)
  | 1 => some ((412 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0271 : SmokeLabel -> Option (State × Int)
  | 1 => some ((414 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0272 : SmokeLabel -> Option (State × Int)
  | 1 => some ((415 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0273 : SmokeLabel -> Option (State × Int)
  | 1 => some ((416 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0274 : SmokeLabel -> Option (State × Int)
  | 1 => some ((417 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0275 : SmokeLabel -> Option (State × Int)
  | 1 => some ((418 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0276 : SmokeLabel -> Option (State × Int)
  | 1 => some ((419 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0277 : SmokeLabel -> Option (State × Int)
  | 1 => some ((420 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0278 : SmokeLabel -> Option (State × Int)
  | 1 => some ((421 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0279 : SmokeLabel -> Option (State × Int)
  | 1 => some ((422 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0280 : SmokeLabel -> Option (State × Int)
  | 1 => some ((424 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0281 : SmokeLabel -> Option (State × Int)
  | 1 => some ((425 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0282 : SmokeLabel -> Option (State × Int)
  | 1 => some ((426 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0283 : SmokeLabel -> Option (State × Int)
  | 1 => some ((427 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0284 : SmokeLabel -> Option (State × Int)
  | 1 => some ((428 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0285 : SmokeLabel -> Option (State × Int)
  | 1 => some ((429 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0286 : SmokeLabel -> Option (State × Int)
  | 1 => some ((441 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0287 : SmokeLabel -> Option (State × Int)
  | 1 => some ((444 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0288 : SmokeLabel -> Option (State × Int)
  | 1 => some ((446 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0289 : SmokeLabel -> Option (State × Int)
  | 1 => some ((448 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0290 : SmokeLabel -> Option (State × Int)
  | 1 => some ((450 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0291 : SmokeLabel -> Option (State × Int)
  | 1 => some ((452 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0292 : SmokeLabel -> Option (State × Int)
  | 1 => some ((453 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0293 : SmokeLabel -> Option (State × Int)
  | 1 => some ((460 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0294 : SmokeLabel -> Option (State × Int)
  | 1 => some ((461 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0295 : SmokeLabel -> Option (State × Int)
  | 1 => some ((463 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0296 : SmokeLabel -> Option (State × Int)
  | 1 => some ((464 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0297 : SmokeLabel -> Option (State × Int)
  | 1 => some ((465 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0298 : SmokeLabel -> Option (State × Int)
  | 1 => some ((467 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0299 : SmokeLabel -> Option (State × Int)
  | 1 => some ((470 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0300 : SmokeLabel -> Option (State × Int)
  | 1 => some ((471 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0301 : SmokeLabel -> Option (State × Int)
  | 1 => some ((473 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0302 : SmokeLabel -> Option (State × Int)
  | 1 => some ((475 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0303 : SmokeLabel -> Option (State × Int)
  | 1 => some ((476 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0304 : SmokeLabel -> Option (State × Int)
  | 1 => some ((477 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0305 : SmokeLabel -> Option (State × Int)
  | 1 => some ((478 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0306 : SmokeLabel -> Option (State × Int)
  | 1 => some ((479 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0307 : SmokeLabel -> Option (State × Int)
  | 1 => some ((480 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0308 : SmokeLabel -> Option (State × Int)
  | 1 => some ((481 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0309 : SmokeLabel -> Option (State × Int)
  | 1 => some ((488 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0310 : SmokeLabel -> Option (State × Int)
  | 1 => some ((490 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0311 : SmokeLabel -> Option (State × Int)
  | 1 => some ((491 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0312 : SmokeLabel -> Option (State × Int)
  | 13 => some ((379 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0313 : SmokeLabel -> Option (State × Int)
  | 13 => some ((381 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0314 : SmokeLabel -> Option (State × Int)
  | 13 => some ((382 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0315 : SmokeLabel -> Option (State × Int)
  | 13 => some ((383 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0316 : SmokeLabel -> Option (State × Int)
  | 13 => some ((387 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0317 : SmokeLabel -> Option (State × Int)
  | 13 => some ((392 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0318 : SmokeLabel -> Option (State × Int)
  | 13 => some ((398 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0319 : SmokeLabel -> Option (State × Int)
  | 13 => some ((405 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0320 : SmokeLabel -> Option (State × Int)
  | 13 => some ((413 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0321 : SmokeLabel -> Option (State × Int)
  | 13 => some ((423 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0322 : SmokeLabel -> Option (State × Int)
  | 13 => some ((430 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0323 : SmokeLabel -> Option (State × Int)
  | 13 => some ((431 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0324 : SmokeLabel -> Option (State × Int)
  | 13 => some ((432 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0325 : SmokeLabel -> Option (State × Int)
  | 13 => some ((433 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0326 : SmokeLabel -> Option (State × Int)
  | 13 => some ((434 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0327 : SmokeLabel -> Option (State × Int)
  | 13 => some ((435 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0328 : SmokeLabel -> Option (State × Int)
  | 13 => some ((436 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0329 : SmokeLabel -> Option (State × Int)
  | 13 => some ((437 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0330 : SmokeLabel -> Option (State × Int)
  | 13 => some ((438 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0331 : SmokeLabel -> Option (State × Int)
  | 13 => some ((439 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0332 : SmokeLabel -> Option (State × Int)
  | 13 => some ((442 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0333 : SmokeLabel -> Option (State × Int)
  | 13 => some ((443 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0334 : SmokeLabel -> Option (State × Int)
  | 13 => some ((456 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0335 : SmokeLabel -> Option (State × Int)
  | 13 => some ((462 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0336 : SmokeLabel -> Option (State × Int)
  | 13 => some ((474 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0337 : SmokeLabel -> Option (State × Int)
  | 13 => some ((482 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0338 : SmokeLabel -> Option (State × Int)
  | 13 => some ((483 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0339 : SmokeLabel -> Option (State × Int)
  | 13 => some ((484 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0340 : SmokeLabel -> Option (State × Int)
  | 13 => some ((485 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0341 : SmokeLabel -> Option (State × Int)
  | 13 => some ((486 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0342 : SmokeLabel -> Option (State × Int)
  | 11 => some ((377 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0343 : SmokeLabel -> Option (State × Int)
  | 11 => some ((381 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0344 : SmokeLabel -> Option (State × Int)
  | 11 => some ((382 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0345 : SmokeLabel -> Option (State × Int)
  | 11 => some ((383 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0346 : SmokeLabel -> Option (State × Int)
  | 11 => some ((385 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0347 : SmokeLabel -> Option (State × Int)
  | 11 => some ((387 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0348 : SmokeLabel -> Option (State × Int)
  | 11 => some ((390 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0349 : SmokeLabel -> Option (State × Int)
  | 11 => some ((396 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0350 : SmokeLabel -> Option (State × Int)
  | 11 => some ((398 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0351 : SmokeLabel -> Option (State × Int)
  | 11 => some ((403 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0352 : SmokeLabel -> Option (State × Int)
  | 11 => some ((405 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0353 : SmokeLabel -> Option (State × Int)
  | 11 => some ((432 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0354 : SmokeLabel -> Option (State × Int)
  | 11 => some ((433 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0355 : SmokeLabel -> Option (State × Int)
  | 11 => some ((440 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0356 : SmokeLabel -> Option (State × Int)
  | 11 => some ((442 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0357 : SmokeLabel -> Option (State × Int)
  | 11 => some ((445 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0358 : SmokeLabel -> Option (State × Int)
  | 11 => some ((447 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0359 : SmokeLabel -> Option (State × Int)
  | 11 => some ((449 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0360 : SmokeLabel -> Option (State × Int)
  | 11 => some ((451 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0361 : SmokeLabel -> Option (State × Int)
  | 11 => some ((472 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0362 : SmokeLabel -> Option (State × Int)
  | 11 => some ((474 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0363 : SmokeLabel -> Option (State × Int)
  | 11 => some ((485 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0364 : SmokeLabel -> Option (State × Int)
  | 11 => some ((487 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0365 : SmokeLabel -> Option (State × Int)
  | 8 => some ((454 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0366 : SmokeLabel -> Option (State × Int)
  | 8 => some ((455 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0367 : SmokeLabel -> Option (State × Int)
  | 8 => some ((456 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0368 : SmokeLabel -> Option (State × Int)
  | 8 => some ((457 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0369 : SmokeLabel -> Option (State × Int)
  | 8 => some ((458 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0370 : SmokeLabel -> Option (State × Int)
  | 8 => some ((459 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0371 : SmokeLabel -> Option (State × Int)
  | 8 => some ((466 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0372 : SmokeLabel -> Option (State × Int)
  | 8 => some ((468 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0373 : SmokeLabel -> Option (State × Int)
  | 8 => some ((469 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0374 : SmokeLabel -> Option (State × Int)
  | 8 => some ((482 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0375 : SmokeLabel -> Option (State × Int)
  | 8 => some ((489 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0376 : SmokeLabel -> Option (State × Int)
  | 9 => some ((492 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0377 : SmokeLabel -> Option (State × Int)
  | 9 => some ((493 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0378 : SmokeLabel -> Option (State × Int)
  | 9 => some ((494 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0379 : SmokeLabel -> Option (State × Int)
  | 9 => some ((495 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0380 : SmokeLabel -> Option (State × Int)
  | 9 => some ((496 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0381 : SmokeLabel -> Option (State × Int)
  | 9 => some ((497 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0382 : SmokeLabel -> Option (State × Int)
  | 9 => some ((498 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0383 : SmokeLabel -> Option (State × Int)
  | 9 => some ((499 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0384 : SmokeLabel -> Option (State × Int)
  | 9 => some ((500 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0385 : SmokeLabel -> Option (State × Int)
  | 9 => some ((501 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0386 : SmokeLabel -> Option (State × Int)
  | 9 => some ((502 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0387 : SmokeLabel -> Option (State × Int)
  | 9 => some ((503 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0388 : SmokeLabel -> Option (State × Int)
  | 9 => some ((504 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0389 : SmokeLabel -> Option (State × Int)
  | 9 => some ((505 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0390 : SmokeLabel -> Option (State × Int)
  | 9 => some ((506 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0391 : SmokeLabel -> Option (State × Int)
  | 9 => some ((507 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0392 : SmokeLabel -> Option (State × Int)
  | 9 => some ((508 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0393 : SmokeLabel -> Option (State × Int)
  | 9 => some ((509 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0394 : SmokeLabel -> Option (State × Int)
  | 9 => some ((510 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0395 : SmokeLabel -> Option (State × Int)
  | 9 => some ((511 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0396 : SmokeLabel -> Option (State × Int)
  | 9 => some ((512 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0397 : SmokeLabel -> Option (State × Int)
  | 9 => some ((513 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0398 : SmokeLabel -> Option (State × Int)
  | 9 => some ((514 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0399 : SmokeLabel -> Option (State × Int)
  | 9 => some ((515 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0400 : SmokeLabel -> Option (State × Int)
  | 9 => some ((516 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0401 : SmokeLabel -> Option (State × Int)
  | 9 => some ((517 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0402 : SmokeLabel -> Option (State × Int)
  | 9 => some ((518 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0403 : SmokeLabel -> Option (State × Int)
  | 9 => some ((519 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0404 : SmokeLabel -> Option (State × Int)
  | 9 => some ((520 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0405 : SmokeLabel -> Option (State × Int)
  | 9 => some ((521 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0406 : SmokeLabel -> Option (State × Int)
  | 9 => some ((522 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0407 : SmokeLabel -> Option (State × Int)
  | 9 => some ((523 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0408 : SmokeLabel -> Option (State × Int)
  | 9 => some ((524 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0409 : SmokeLabel -> Option (State × Int)
  | 9 => some ((525 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0410 : SmokeLabel -> Option (State × Int)
  | 9 => some ((526 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0411 : SmokeLabel -> Option (State × Int)
  | 9 => some ((527 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0412 : SmokeLabel -> Option (State × Int)
  | 9 => some ((528 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0413 : SmokeLabel -> Option (State × Int)
  | 9 => some ((529 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0414 : SmokeLabel -> Option (State × Int)
  | 9 => some ((530 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0415 : SmokeLabel -> Option (State × Int)
  | 9 => some ((531 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0416 : SmokeLabel -> Option (State × Int)
  | 9 => some ((532 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0417 : SmokeLabel -> Option (State × Int)
  | 9 => some ((533 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0418 : SmokeLabel -> Option (State × Int)
  | 9 => some ((534 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0419 : SmokeLabel -> Option (State × Int)
  | 9 => some ((535 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0420 : SmokeLabel -> Option (State × Int)
  | 9 => some ((536 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0421 : SmokeLabel -> Option (State × Int)
  | 9 => some ((537 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0422 : SmokeLabel -> Option (State × Int)
  | 9 => some ((538 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0423 : SmokeLabel -> Option (State × Int)
  | 9 => some ((539 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0424 : SmokeLabel -> Option (State × Int)
  | 9 => some ((540 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0425 : SmokeLabel -> Option (State × Int)
  | 9 => some ((541 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0426 : SmokeLabel -> Option (State × Int)
  | 9 => some ((542 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0427 : SmokeLabel -> Option (State × Int)
  | 9 => some ((543 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0428 : SmokeLabel -> Option (State × Int)
  | 9 => some ((544 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0429 : SmokeLabel -> Option (State × Int)
  | 9 => some ((545 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0430 : SmokeLabel -> Option (State × Int)
  | 9 => some ((546 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0431 : SmokeLabel -> Option (State × Int)
  | 9 => some ((547 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0432 : SmokeLabel -> Option (State × Int)
  | 9 => some ((548 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0433 : SmokeLabel -> Option (State × Int)
  | 9 => some ((549 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0434 : SmokeLabel -> Option (State × Int)
  | 9 => some ((550 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0435 : SmokeLabel -> Option (State × Int)
  | 9 => some ((551 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0436 : SmokeLabel -> Option (State × Int)
  | 9 => some ((552 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0437 : SmokeLabel -> Option (State × Int)
  | 9 => some ((553 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0438 : SmokeLabel -> Option (State × Int)
  | 9 => some ((554 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0439 : SmokeLabel -> Option (State × Int)
  | 9 => some ((555 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0440 : SmokeLabel -> Option (State × Int)
  | 9 => some ((556 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0441 : SmokeLabel -> Option (State × Int)
  | 9 => some ((557 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0442 : SmokeLabel -> Option (State × Int)
  | 9 => some ((558 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0443 : SmokeLabel -> Option (State × Int)
  | 9 => some ((559 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0444 : SmokeLabel -> Option (State × Int)
  | 9 => some ((560 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0445 : SmokeLabel -> Option (State × Int)
  | 9 => some ((561 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0446 : SmokeLabel -> Option (State × Int)
  | 9 => some ((562 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0447 : SmokeLabel -> Option (State × Int)
  | 9 => some ((563 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0448 : SmokeLabel -> Option (State × Int)
  | 9 => some ((564 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0449 : SmokeLabel -> Option (State × Int)
  | 9 => some ((565 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0450 : SmokeLabel -> Option (State × Int)
  | 9 => some ((566 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0451 : SmokeLabel -> Option (State × Int)
  | 9 => some ((567 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0452 : SmokeLabel -> Option (State × Int)
  | 9 => some ((568 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0453 : SmokeLabel -> Option (State × Int)
  | 9 => some ((569 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0454 : SmokeLabel -> Option (State × Int)
  | 9 => some ((570 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0455 : SmokeLabel -> Option (State × Int)
  | 9 => some ((571 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0456 : SmokeLabel -> Option (State × Int)
  | 9 => some ((572 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0457 : SmokeLabel -> Option (State × Int)
  | 9 => some ((573 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0458 : SmokeLabel -> Option (State × Int)
  | 9 => some ((574 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0459 : SmokeLabel -> Option (State × Int)
  | 9 => some ((575 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0460 : SmokeLabel -> Option (State × Int)
  | 9 => some ((576 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0461 : SmokeLabel -> Option (State × Int)
  | 9 => some ((577 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0462 : SmokeLabel -> Option (State × Int)
  | 9 => some ((578 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0463 : SmokeLabel -> Option (State × Int)
  | 9 => some ((579 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0464 : SmokeLabel -> Option (State × Int)
  | 9 => some ((580 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0465 : SmokeLabel -> Option (State × Int)
  | 9 => some ((581 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0466 : SmokeLabel -> Option (State × Int)
  | 9 => some ((582 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0467 : SmokeLabel -> Option (State × Int)
  | 9 => some ((583 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0468 : SmokeLabel -> Option (State × Int)
  | 9 => some ((584 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0469 : SmokeLabel -> Option (State × Int)
  | 9 => some ((585 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0470 : SmokeLabel -> Option (State × Int)
  | 9 => some ((586 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0471 : SmokeLabel -> Option (State × Int)
  | 9 => some ((587 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0472 : SmokeLabel -> Option (State × Int)
  | 9 => some ((588 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0473 : SmokeLabel -> Option (State × Int)
  | 9 => some ((589 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0474 : SmokeLabel -> Option (State × Int)
  | 9 => some ((590 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0475 : SmokeLabel -> Option (State × Int)
  | 9 => some ((591 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0476 : SmokeLabel -> Option (State × Int)
  | 9 => some ((592 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0477 : SmokeLabel -> Option (State × Int)
  | 9 => some ((593 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0478 : SmokeLabel -> Option (State × Int)
  | 9 => some ((594 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0479 : SmokeLabel -> Option (State × Int)
  | 9 => some ((595 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0480 : SmokeLabel -> Option (State × Int)
  | 9 => some ((596 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0481 : SmokeLabel -> Option (State × Int)
  | 9 => some ((597 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0482 : SmokeLabel -> Option (State × Int)
  | 9 => some ((598 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0483 : SmokeLabel -> Option (State × Int)
  | 9 => some ((599 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0484 : SmokeLabel -> Option (State × Int)
  | 9 => some ((600 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0485 : SmokeLabel -> Option (State × Int)
  | 9 => some ((601 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0486 : SmokeLabel -> Option (State × Int)
  | 9 => some ((602 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0487 : SmokeLabel -> Option (State × Int)
  | 9 => some ((603 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0488 : SmokeLabel -> Option (State × Int)
  | 9 => some ((604 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0489 : SmokeLabel -> Option (State × Int)
  | 9 => some ((605 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0490 : SmokeLabel -> Option (State × Int)
  | 9 => some ((606 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0491 : SmokeLabel -> Option (State × Int)
  | 9 => some ((607 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0492 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0493 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0494 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0495 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0496 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0497 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0498 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0499 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0500 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0501 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0502 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0503 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0504 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0505 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0506 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0507 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0508 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0509 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0510 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0511 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0512 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0513 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0514 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0515 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0516 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0517 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0518 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0519 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0520 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0521 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0522 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0523 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0524 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0525 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0526 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0527 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0528 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0529 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0530 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0531 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0532 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0533 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0534 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0535 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0536 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0537 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0538 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0539 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0540 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0541 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0542 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0543 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0544 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0545 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0546 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0547 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0548 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0549 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0550 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0551 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0552 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0553 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0554 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0555 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0556 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0557 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0558 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0559 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0560 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0561 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0562 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0563 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0564 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0565 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0566 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0567 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0568 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0569 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0570 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0571 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0572 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0573 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0574 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0575 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0576 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0577 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0578 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0579 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0580 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0581 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0582 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0583 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0584 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0585 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0586 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0587 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0588 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0589 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0590 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0591 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0592 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0593 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0594 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0595 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0596 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0597 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0598 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0599 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0600 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0601 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0602 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0603 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0604 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0605 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0606 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0607 : SmokeLabel -> Option (State × Int)
  | _ => none

def graphSmokeNext_s0608 : SmokeLabel -> Option (State × Int)
  | 0 => some ((612 : State), (-124 : Int))
  | 10 => some ((610 : State), (-73 : Int))
  | 12 => some ((611 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0609 : SmokeLabel -> Option (State × Int)
  | 8 => some ((610 : State), (103 : Int))
  | 11 => some ((613 : State), (-73 : Int))
  | 12 => some ((614 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0610 : SmokeLabel -> Option (State × Int)
  | 2 => some ((618 : State), (-124 : Int))
  | 11 => some ((615 : State), (-73 : Int))
  | 12 => some ((616 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0611 : SmokeLabel -> Option (State × Int)
  | 1 => some ((621 : State), (-124 : Int))
  | 10 => some ((616 : State), (-73 : Int))
  | 13 => some ((619 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0612 : SmokeLabel -> Option (State × Int)
  | 4 => some ((622 : State), (96 : Int))
  | 11 => some ((617 : State), (-51 : Int))
  | 12 => some ((620 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0613 : SmokeLabel -> Option (State × Int)
  | 4 => some ((624 : State), (-124 : Int))
  | 8 => some ((615 : State), (103 : Int))
  | 12 => some ((623 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0614 : SmokeLabel -> Option (State × Int)
  | 8 => some ((616 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0615 : SmokeLabel -> Option (State × Int)
  | 0 => some ((627 : State), (-124 : Int))
  | 12 => some ((625 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0616 : SmokeLabel -> Option (State × Int)
  | 3 => some ((632 : State), (-124 : Int))
  | 11 => some ((625 : State), (-73 : Int))
  | 13 => some ((628 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0617 : SmokeLabel -> Option (State × Int)
  | 6 => some ((633 : State), (96 : Int))
  | 10 => some ((626 : State), (-51 : Int))
  | 12 => some ((629 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0618 : SmokeLabel -> Option (State × Int)
  | 6 => some ((635 : State), (96 : Int))
  | 12 => some ((631 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0619 : SmokeLabel -> Option (State × Int)
  | 0 => some ((637 : State), (-124 : Int))
  | 10 => some ((628 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0620 : SmokeLabel -> Option (State × Int)
  | 5 => some ((638 : State), (96 : Int))
  | 11 => some ((629 : State), (-51 : Int))
  | 13 => some ((636 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0621 : SmokeLabel -> Option (State × Int)
  | 5 => some ((640 : State), (96 : Int))
  | 11 => some ((630 : State), (-51 : Int))
  | _ => none

def graphSmokeNext_s0622 : SmokeLabel -> Option (State × Int)
  | 6 => some ((641 : State), (-36 : Int))
  | 11 => some ((634 : State), (45 : Int))
  | 13 => some ((639 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0623 : SmokeLabel -> Option (State × Int)
  | 5 => some ((643 : State), (-124 : Int))
  | 8 => some ((625 : State), (103 : Int))
  | 13 => some ((642 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0624 : SmokeLabel -> Option (State × Int)
  | 0 => some ((645 : State), (96 : Int))
  | 12 => some ((644 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0625 : SmokeLabel -> Option (State × Int)
  | 1 => some ((650 : State), (-124 : Int))
  | 13 => some ((646 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0626 : SmokeLabel -> Option (State × Int)
  | 4 => some ((652 : State), (96 : Int))
  | 12 => some ((647 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0627 : SmokeLabel -> Option (State × Int)
  | 4 => some ((654 : State), (96 : Int))
  | 12 => some ((648 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0628 : SmokeLabel -> Option (State × Int)
  | 2 => some ((658 : State), (-124 : Int))
  | 11 => some ((646 : State), (-73 : Int))
  | _ => none

def graphSmokeNext_s0629 : SmokeLabel -> Option (State × Int)
  | 10 => some ((647 : State), (-51 : Int))
  | 13 => some ((655 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0630 : SmokeLabel -> Option (State × Int)
  | 7 => some ((660 : State), (96 : Int))
  | 10 => some ((649 : State), (-51 : Int))
  | _ => none

def graphSmokeNext_s0631 : SmokeLabel -> Option (State × Int)
  | 13 => some ((657 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0632 : SmokeLabel -> Option (State × Int)
  | 7 => some ((662 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0633 : SmokeLabel -> Option (State × Int)
  | 4 => some ((666 : State), (-36 : Int))
  | 13 => some ((659 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0634 : SmokeLabel -> Option (State × Int)
  | 10 => some ((651 : State), (45 : Int))
  | 13 => some ((661 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0635 : SmokeLabel -> Option (State × Int)
  | 4 => some ((667 : State), (-36 : Int))
  | 13 => some ((664 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0636 : SmokeLabel -> Option (State × Int)
  | 4 => some ((669 : State), (96 : Int))
  | 11 => some ((655 : State), (-51 : Int))
  | _ => none

def graphSmokeNext_s0637 : SmokeLabel -> Option (State × Int)
  | 4 => some ((670 : State), (96 : Int))
  | 11 => some ((656 : State), (-51 : Int))
  | _ => none

def graphSmokeNext_s0638 : SmokeLabel -> Option (State × Int)
  | 7 => some ((671 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0639 : SmokeLabel -> Option (State × Int)
  | 11 => some ((661 : State), (45 : Int))
  | 12 => some ((668 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0640 : SmokeLabel -> Option (State × Int)
  | 7 => some ((672 : State), (-36 : Int))
  | 11 => some ((663 : State), (45 : Int))
  | _ => none

def graphSmokeNext_s0641 : SmokeLabel -> Option (State × Int)
  | 5 => some ((674 : State), (-144 : Int))
  | 11 => some ((665 : State), (81 : Int))
  | 13 => some ((673 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0642 : SmokeLabel -> Option (State × Int)
  | 4 => some ((676 : State), (-124 : Int))
  | 8 => some ((646 : State), (103 : Int))
  | _ => none

def graphSmokeNext_s0643 : SmokeLabel -> Option (State × Int)
  | 1 => some ((678 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0644 : SmokeLabel -> Option (State × Int)
  | 1 => some ((679 : State), (96 : Int))
  | 13 => some ((675 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0645 : SmokeLabel -> Option (State × Int)
  | 2 => some ((680 : State), (-36 : Int))
  | 8 => some ((653 : State), (-117 : Int))
  | 13 => some ((677 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0646 : SmokeLabel -> Option (State × Int)
  | 0 => some ((683 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0647 : SmokeLabel -> Option (State × Int)
  | 5 => some ((684 : State), (96 : Int))
  | 13 => some ((681 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0648 : SmokeLabel -> Option (State × Int)
  | 5 => some ((685 : State), (96 : Int))
  | 13 => some ((682 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0649 : SmokeLabel -> Option (State × Int)
  | 5 => some ((691 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0650 : SmokeLabel -> Option (State × Int)
  | 5 => some ((693 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0651 : SmokeLabel -> Option (State × Int)
  | 6 => some ((695 : State), (-36 : Int))
  | 13 => some ((686 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0652 : SmokeLabel -> Option (State × Int)
  | 6 => some ((697 : State), (-36 : Int))
  | 13 => some ((687 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0653 : SmokeLabel -> Option (State × Int)
  | 6 => some ((698 : State), (-36 : Int))
  | 13 => some ((688 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0654 : SmokeLabel -> Option (State × Int)
  | 6 => some ((699 : State), (-36 : Int))
  | 13 => some ((689 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0655 : SmokeLabel -> Option (State × Int)
  | 10 => some ((681 : State), (-51 : Int))
  | _ => none

def graphSmokeNext_s0656 : SmokeLabel -> Option (State × Int)
  | 6 => some ((701 : State), (96 : Int))
  | 10 => some ((682 : State), (-51 : Int))
  | _ => none

def graphSmokeNext_s0657 : SmokeLabel -> Option (State × Int)
  | 6 => some ((705 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0658 : SmokeLabel -> Option (State × Int)
  | 6 => some ((706 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0659 : SmokeLabel -> Option (State × Int)
  | 5 => some ((707 : State), (-36 : Int))
  | 12 => some ((700 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0660 : SmokeLabel -> Option (State × Int)
  | 5 => some ((709 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0661 : SmokeLabel -> Option (State × Int)
  | 5 => some ((712 : State), (-36 : Int))
  | 10 => some ((686 : State), (45 : Int))
  | 12 => some ((702 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0662 : SmokeLabel -> Option (State × Int)
  | 5 => some ((713 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0663 : SmokeLabel -> Option (State × Int)
  | 10 => some ((690 : State), (45 : Int))
  | _ => none

def graphSmokeNext_s0664 : SmokeLabel -> Option (State × Int)
  | 12 => some ((704 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0665 : SmokeLabel -> Option (State × Int)
  | 10 => some ((694 : State), (81 : Int))
  | 13 => some ((710 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0666 : SmokeLabel -> Option (State × Int)
  | 10 => some ((696 : State), (81 : Int))
  | 13 => some ((711 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0667 : SmokeLabel -> Option (State × Int)
  | 7 => some ((716 : State), (-144 : Int))
  | 13 => some ((714 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0668 : SmokeLabel -> Option (State × Int)
  | 6 => some ((718 : State), (-36 : Int))
  | 11 => some ((702 : State), (45 : Int))
  | _ => none

def graphSmokeNext_s0669 : SmokeLabel -> Option (State × Int)
  | 6 => some ((719 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0670 : SmokeLabel -> Option (State × Int)
  | 6 => some ((720 : State), (-36 : Int))
  | 11 => some ((703 : State), (45 : Int))
  | _ => none

def graphSmokeNext_s0671 : SmokeLabel -> Option (State × Int)
  | 4 => some ((721 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0672 : SmokeLabel -> Option (State × Int)
  | 4 => some ((723 : State), (-144 : Int))
  | 11 => some ((708 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0673 : SmokeLabel -> Option (State × Int)
  | 11 => some ((710 : State), (81 : Int))
  | 12 => some ((717 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0674 : SmokeLabel -> Option (State × Int)
  | 2 => some ((724 : State), (-144 : Int))
  | 11 => some ((715 : State), (-63 : Int))
  | 13 => some ((722 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0675 : SmokeLabel -> Option (State × Int)
  | 0 => some ((726 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0676 : SmokeLabel -> Option (State × Int)
  | 0 => some ((727 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0677 : SmokeLabel -> Option (State × Int)
  | 8 => some ((688 : State), (-117 : Int))
  | 12 => some ((725 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0678 : SmokeLabel -> Option (State × Int)
  | 3 => some ((729 : State), (-36 : Int))
  | 8 => some ((692 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0679 : SmokeLabel -> Option (State × Int)
  | 3 => some ((730 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0680 : SmokeLabel -> Option (State × Int)
  | 1 => some ((731 : State), (-144 : Int))
  | 13 => some ((728 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0681 : SmokeLabel -> Option (State × Int)
  | 4 => some ((734 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0682 : SmokeLabel -> Option (State × Int)
  | 4 => some ((738 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0683 : SmokeLabel -> Option (State × Int)
  | 4 => some ((740 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0684 : SmokeLabel -> Option (State × Int)
  | 7 => some ((741 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0685 : SmokeLabel -> Option (State × Int)
  | 7 => some ((742 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0686 : SmokeLabel -> Option (State × Int)
  | 12 => some ((732 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0687 : SmokeLabel -> Option (State × Int)
  | 12 => some ((733 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0688 : SmokeLabel -> Option (State × Int)
  | 12 => some ((735 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0689 : SmokeLabel -> Option (State × Int)
  | 12 => some ((737 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0690 : SmokeLabel -> Option (State × Int)
  | 7 => some ((745 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0691 : SmokeLabel -> Option (State × Int)
  | 7 => some ((747 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0692 : SmokeLabel -> Option (State × Int)
  | 7 => some ((748 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0693 : SmokeLabel -> Option (State × Int)
  | 7 => some ((749 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0694 : SmokeLabel -> Option (State × Int)
  | 5 => some ((757 : State), (-144 : Int))
  | 13 => some ((750 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0695 : SmokeLabel -> Option (State × Int)
  | 5 => some ((758 : State), (-144 : Int))
  | 13 => some ((751 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0696 : SmokeLabel -> Option (State × Int)
  | 5 => some ((759 : State), (-144 : Int))
  | 13 => some ((752 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0697 : SmokeLabel -> Option (State × Int)
  | 5 => some ((760 : State), (-144 : Int))
  | 13 => some ((753 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0698 : SmokeLabel -> Option (State × Int)
  | 5 => some ((761 : State), (-144 : Int))
  | 13 => some ((754 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0699 : SmokeLabel -> Option (State × Int)
  | 5 => some ((762 : State), (-144 : Int))
  | 13 => some ((755 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0700 : SmokeLabel -> Option (State × Int)
  | 4 => some ((766 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0701 : SmokeLabel -> Option (State × Int)
  | 4 => some ((768 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0702 : SmokeLabel -> Option (State × Int)
  | 10 => some ((732 : State), (45 : Int))
  | _ => none

def graphSmokeNext_s0703 : SmokeLabel -> Option (State × Int)
  | 10 => some ((737 : State), (45 : Int))
  | _ => none

def graphSmokeNext_s0704 : SmokeLabel -> Option (State × Int)
  | 4 => some ((770 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0705 : SmokeLabel -> Option (State × Int)
  | 4 => some ((771 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0706 : SmokeLabel -> Option (State × Int)
  | 4 => some ((772 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0707 : SmokeLabel -> Option (State × Int)
  | 10 => some ((743 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0708 : SmokeLabel -> Option (State × Int)
  | 10 => some ((744 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0709 : SmokeLabel -> Option (State × Int)
  | 10 => some ((746 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0710 : SmokeLabel -> Option (State × Int)
  | 10 => some ((750 : State), (81 : Int))
  | 12 => some ((763 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0711 : SmokeLabel -> Option (State × Int)
  | 10 => some ((752 : State), (81 : Int))
  | 12 => some ((765 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0712 : SmokeLabel -> Option (State × Int)
  | 6 => some ((775 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0713 : SmokeLabel -> Option (State × Int)
  | 6 => some ((778 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0714 : SmokeLabel -> Option (State × Int)
  | 12 => some ((769 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0715 : SmokeLabel -> Option (State × Int)
  | 10 => some ((756 : State), (-63 : Int))
  | 13 => some ((774 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0716 : SmokeLabel -> Option (State × Int)
  | 0 => some ((779 : State), (-144 : Int))
  | 13 => some ((777 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0717 : SmokeLabel -> Option (State × Int)
  | 5 => some ((782 : State), (-144 : Int))
  | 11 => some ((763 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0718 : SmokeLabel -> Option (State × Int)
  | 5 => some ((783 : State), (-144 : Int))
  | 11 => some ((764 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0719 : SmokeLabel -> Option (State × Int)
  | 5 => some ((784 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0720 : SmokeLabel -> Option (State × Int)
  | 5 => some ((785 : State), (-144 : Int))
  | 11 => some ((767 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0721 : SmokeLabel -> Option (State × Int)
  | 3 => some ((786 : State), (-144 : Int))
  | 11 => some ((773 : State), (-63 : Int))
  | _ => none

def graphSmokeNext_s0722 : SmokeLabel -> Option (State × Int)
  | 11 => some ((774 : State), (-63 : Int))
  | 12 => some ((781 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0723 : SmokeLabel -> Option (State × Int)
  | 3 => some ((788 : State), (-144 : Int))
  | 11 => some ((776 : State), (-63 : Int))
  | _ => none

def graphSmokeNext_s0724 : SmokeLabel -> Option (State × Int)
  | 7 => some ((789 : State), (-36 : Int))
  | 11 => some ((780 : State), (81 : Int))
  | 13 => some ((787 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0725 : SmokeLabel -> Option (State × Int)
  | 2 => some ((791 : State), (-36 : Int))
  | 8 => some ((735 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0726 : SmokeLabel -> Option (State × Int)
  | 2 => some ((792 : State), (-36 : Int))
  | 8 => some ((736 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0727 : SmokeLabel -> Option (State × Int)
  | 2 => some ((793 : State), (-36 : Int))
  | 8 => some ((739 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0728 : SmokeLabel -> Option (State × Int)
  | 12 => some ((790 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0729 : SmokeLabel -> Option (State × Int)
  | 0 => some ((795 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0730 : SmokeLabel -> Option (State × Int)
  | 0 => some ((796 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0731 : SmokeLabel -> Option (State × Int)
  | 6 => some ((797 : State), (-144 : Int))
  | 13 => some ((794 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0732 : SmokeLabel -> Option (State × Int)
  | 6 => some ((800 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0733 : SmokeLabel -> Option (State × Int)
  | 6 => some ((804 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0734 : SmokeLabel -> Option (State × Int)
  | 6 => some ((805 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0735 : SmokeLabel -> Option (State × Int)
  | 6 => some ((807 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0736 : SmokeLabel -> Option (State × Int)
  | 6 => some ((808 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0737 : SmokeLabel -> Option (State × Int)
  | 6 => some ((810 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0738 : SmokeLabel -> Option (State × Int)
  | 6 => some ((812 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0739 : SmokeLabel -> Option (State × Int)
  | 6 => some ((813 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0740 : SmokeLabel -> Option (State × Int)
  | 6 => some ((814 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0741 : SmokeLabel -> Option (State × Int)
  | 4 => some ((816 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0742 : SmokeLabel -> Option (State × Int)
  | 4 => some ((817 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0743 : SmokeLabel -> Option (State × Int)
  | 4 => some ((821 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0744 : SmokeLabel -> Option (State × Int)
  | 4 => some ((824 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0745 : SmokeLabel -> Option (State × Int)
  | 4 => some ((825 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0746 : SmokeLabel -> Option (State × Int)
  | 4 => some ((826 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0747 : SmokeLabel -> Option (State × Int)
  | 4 => some ((827 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0748 : SmokeLabel -> Option (State × Int)
  | 4 => some ((830 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0749 : SmokeLabel -> Option (State × Int)
  | 4 => some ((831 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0750 : SmokeLabel -> Option (State × Int)
  | 12 => some ((798 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0751 : SmokeLabel -> Option (State × Int)
  | 12 => some ((799 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0752 : SmokeLabel -> Option (State × Int)
  | 12 => some ((801 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0753 : SmokeLabel -> Option (State × Int)
  | 12 => some ((803 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0754 : SmokeLabel -> Option (State × Int)
  | 12 => some ((806 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0755 : SmokeLabel -> Option (State × Int)
  | 12 => some ((809 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0756 : SmokeLabel -> Option (State × Int)
  | 2 => some ((833 : State), (-144 : Int))
  | 13 => some ((818 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0757 : SmokeLabel -> Option (State × Int)
  | 2 => some ((834 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0758 : SmokeLabel -> Option (State × Int)
  | 2 => some ((835 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0759 : SmokeLabel -> Option (State × Int)
  | 2 => some ((836 : State), (-144 : Int))
  | 13 => some ((820 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0760 : SmokeLabel -> Option (State × Int)
  | 2 => some ((837 : State), (-144 : Int))
  | 13 => some ((822 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0761 : SmokeLabel -> Option (State × Int)
  | 2 => some ((838 : State), (-144 : Int))
  | 13 => some ((828 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0762 : SmokeLabel -> Option (State × Int)
  | 2 => some ((839 : State), (-144 : Int))
  | 13 => some ((829 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0763 : SmokeLabel -> Option (State × Int)
  | 10 => some ((798 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0764 : SmokeLabel -> Option (State × Int)
  | 10 => some ((799 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0765 : SmokeLabel -> Option (State × Int)
  | 10 => some ((801 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0766 : SmokeLabel -> Option (State × Int)
  | 10 => some ((802 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0767 : SmokeLabel -> Option (State × Int)
  | 10 => some ((809 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0768 : SmokeLabel -> Option (State × Int)
  | 10 => some ((811 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0769 : SmokeLabel -> Option (State × Int)
  | 7 => some ((846 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0770 : SmokeLabel -> Option (State × Int)
  | 7 => some ((847 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0771 : SmokeLabel -> Option (State × Int)
  | 7 => some ((848 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0772 : SmokeLabel -> Option (State × Int)
  | 7 => some ((850 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0773 : SmokeLabel -> Option (State × Int)
  | 10 => some ((815 : State), (-63 : Int))
  | _ => none

def graphSmokeNext_s0774 : SmokeLabel -> Option (State × Int)
  | 10 => some ((818 : State), (-63 : Int))
  | 12 => some ((840 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0775 : SmokeLabel -> Option (State × Int)
  | 10 => some ((819 : State), (-63 : Int))
  | 12 => some ((843 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0776 : SmokeLabel -> Option (State × Int)
  | 10 => some ((823 : State), (-63 : Int))
  | _ => none

def graphSmokeNext_s0777 : SmokeLabel -> Option (State × Int)
  | 12 => some ((845 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0778 : SmokeLabel -> Option (State × Int)
  | 1 => some ((852 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0779 : SmokeLabel -> Option (State × Int)
  | 5 => some ((856 : State), (-36 : Int))
  | 13 => some ((851 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0780 : SmokeLabel -> Option (State × Int)
  | 10 => some ((832 : State), (81 : Int))
  | 13 => some ((853 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0781 : SmokeLabel -> Option (State × Int)
  | 2 => some ((858 : State), (-144 : Int))
  | 11 => some ((840 : State), (-63 : Int))
  | _ => none

def graphSmokeNext_s0782 : SmokeLabel -> Option (State × Int)
  | 2 => some ((859 : State), (-144 : Int))
  | 11 => some ((841 : State), (-63 : Int))
  | _ => none

def graphSmokeNext_s0783 : SmokeLabel -> Option (State × Int)
  | 2 => some ((860 : State), (-144 : Int))
  | 11 => some ((842 : State), (-63 : Int))
  | _ => none

def graphSmokeNext_s0784 : SmokeLabel -> Option (State × Int)
  | 2 => some ((861 : State), (-144 : Int))
  | 11 => some ((844 : State), (-63 : Int))
  | _ => none

def graphSmokeNext_s0785 : SmokeLabel -> Option (State × Int)
  | 2 => some ((862 : State), (-144 : Int))
  | 11 => some ((849 : State), (-63 : Int))
  | _ => none

def graphSmokeNext_s0786 : SmokeLabel -> Option (State × Int)
  | 6 => some ((864 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0787 : SmokeLabel -> Option (State × Int)
  | 11 => some ((853 : State), (81 : Int))
  | 12 => some ((857 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0788 : SmokeLabel -> Option (State × Int)
  | 6 => some ((865 : State), (-36 : Int))
  | 11 => some ((854 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0789 : SmokeLabel -> Option (State × Int)
  | 3 => some ((866 : State), (96 : Int))
  | 10 => some ((855 : State), (-117 : Int))
  | 13 => some ((863 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0790 : SmokeLabel -> Option (State × Int)
  | 1 => some ((868 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0791 : SmokeLabel -> Option (State × Int)
  | 1 => some ((869 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0792 : SmokeLabel -> Option (State × Int)
  | 1 => some ((870 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0793 : SmokeLabel -> Option (State × Int)
  | 1 => some ((871 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0794 : SmokeLabel -> Option (State × Int)
  | 12 => some ((867 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0795 : SmokeLabel -> Option (State × Int)
  | 7 => some ((872 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0796 : SmokeLabel -> Option (State × Int)
  | 7 => some ((873 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0797 : SmokeLabel -> Option (State × Int)
  | 3 => some ((875 : State), (-36 : Int))
  | 13 => some ((874 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0798 : SmokeLabel -> Option (State × Int)
  | 5 => some ((878 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0799 : SmokeLabel -> Option (State × Int)
  | 5 => some ((880 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0800 : SmokeLabel -> Option (State × Int)
  | 5 => some ((882 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0801 : SmokeLabel -> Option (State × Int)
  | 5 => some ((884 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0802 : SmokeLabel -> Option (State × Int)
  | 5 => some ((886 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0803 : SmokeLabel -> Option (State × Int)
  | 5 => some ((888 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0804 : SmokeLabel -> Option (State × Int)
  | 5 => some ((889 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0805 : SmokeLabel -> Option (State × Int)
  | 5 => some ((890 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0806 : SmokeLabel -> Option (State × Int)
  | 5 => some ((892 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0807 : SmokeLabel -> Option (State × Int)
  | 5 => some ((893 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0808 : SmokeLabel -> Option (State × Int)
  | 5 => some ((894 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0809 : SmokeLabel -> Option (State × Int)
  | 5 => some ((896 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0810 : SmokeLabel -> Option (State × Int)
  | 5 => some ((897 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0811 : SmokeLabel -> Option (State × Int)
  | 5 => some ((898 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0812 : SmokeLabel -> Option (State × Int)
  | 5 => some ((899 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0813 : SmokeLabel -> Option (State × Int)
  | 5 => some ((900 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0814 : SmokeLabel -> Option (State × Int)
  | 5 => some ((901 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0815 : SmokeLabel -> Option (State × Int)
  | 3 => some ((902 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0816 : SmokeLabel -> Option (State × Int)
  | 3 => some ((903 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0817 : SmokeLabel -> Option (State × Int)
  | 3 => some ((904 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0818 : SmokeLabel -> Option (State × Int)
  | 12 => some ((876 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0819 : SmokeLabel -> Option (State × Int)
  | 12 => some ((881 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0820 : SmokeLabel -> Option (State × Int)
  | 12 => some ((883 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0821 : SmokeLabel -> Option (State × Int)
  | 12 => some ((885 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0822 : SmokeLabel -> Option (State × Int)
  | 12 => some ((887 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0823 : SmokeLabel -> Option (State × Int)
  | 3 => some ((914 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0824 : SmokeLabel -> Option (State × Int)
  | 3 => some ((915 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0825 : SmokeLabel -> Option (State × Int)
  | 3 => some ((916 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0826 : SmokeLabel -> Option (State × Int)
  | 3 => some ((917 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0827 : SmokeLabel -> Option (State × Int)
  | 3 => some ((918 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0828 : SmokeLabel -> Option (State × Int)
  | 12 => some ((891 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0829 : SmokeLabel -> Option (State × Int)
  | 12 => some ((895 : State), (90 : Int))
  | _ => none

def graphSmokeNext_s0830 : SmokeLabel -> Option (State × Int)
  | 3 => some ((919 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0831 : SmokeLabel -> Option (State × Int)
  | 3 => some ((920 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0832 : SmokeLabel -> Option (State × Int)
  | 7 => some ((922 : State), (-36 : Int))
  | 13 => some ((905 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0833 : SmokeLabel -> Option (State × Int)
  | 7 => some ((923 : State), (-36 : Int))
  | 13 => some ((906 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0834 : SmokeLabel -> Option (State × Int)
  | 7 => some ((924 : State), (-36 : Int))
  | 13 => some ((907 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0835 : SmokeLabel -> Option (State × Int)
  | 7 => some ((925 : State), (-36 : Int))
  | 13 => some ((908 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0836 : SmokeLabel -> Option (State × Int)
  | 7 => some ((926 : State), (-36 : Int))
  | 13 => some ((909 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0837 : SmokeLabel -> Option (State × Int)
  | 7 => some ((927 : State), (-36 : Int))
  | 13 => some ((910 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0838 : SmokeLabel -> Option (State × Int)
  | 7 => some ((929 : State), (-36 : Int))
  | 13 => some ((911 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0839 : SmokeLabel -> Option (State × Int)
  | 7 => some ((930 : State), (-36 : Int))
  | 13 => some ((912 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0840 : SmokeLabel -> Option (State × Int)
  | 10 => some ((876 : State), (-63 : Int))
  | _ => none

def graphSmokeNext_s0841 : SmokeLabel -> Option (State × Int)
  | 10 => some ((877 : State), (-63 : Int))
  | _ => none

def graphSmokeNext_s0842 : SmokeLabel -> Option (State × Int)
  | 10 => some ((879 : State), (-63 : Int))
  | _ => none

def graphSmokeNext_s0843 : SmokeLabel -> Option (State × Int)
  | 10 => some ((881 : State), (-63 : Int))
  | _ => none

def graphSmokeNext_s0844 : SmokeLabel -> Option (State × Int)
  | 10 => some ((887 : State), (-63 : Int))
  | _ => none

def graphSmokeNext_s0845 : SmokeLabel -> Option (State × Int)
  | 0 => some ((932 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0846 : SmokeLabel -> Option (State × Int)
  | 0 => some ((933 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0847 : SmokeLabel -> Option (State × Int)
  | 0 => some ((934 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0848 : SmokeLabel -> Option (State × Int)
  | 0 => some ((935 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0849 : SmokeLabel -> Option (State × Int)
  | 10 => some ((895 : State), (-63 : Int))
  | _ => none

def graphSmokeNext_s0850 : SmokeLabel -> Option (State × Int)
  | 0 => some ((936 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0851 : SmokeLabel -> Option (State × Int)
  | 12 => some ((931 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0852 : SmokeLabel -> Option (State × Int)
  | 4 => some ((945 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0853 : SmokeLabel -> Option (State × Int)
  | 10 => some ((905 : State), (81 : Int))
  | 12 => some ((937 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0854 : SmokeLabel -> Option (State × Int)
  | 10 => some ((913 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0855 : SmokeLabel -> Option (State × Int)
  | 1 => some ((946 : State), (96 : Int))
  | 11 => some ((921 : State), (-117 : Int))
  | 13 => some ((941 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0856 : SmokeLabel -> Option (State × Int)
  | 1 => some ((947 : State), (96 : Int))
  | 11 => some ((928 : State), (-117 : Int))
  | 13 => some ((942 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0857 : SmokeLabel -> Option (State × Int)
  | 7 => some ((950 : State), (-36 : Int))
  | 11 => some ((937 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0858 : SmokeLabel -> Option (State × Int)
  | 7 => some ((951 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0859 : SmokeLabel -> Option (State × Int)
  | 7 => some ((952 : State), (-36 : Int))
  | 11 => some ((938 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0860 : SmokeLabel -> Option (State × Int)
  | 7 => some ((953 : State), (-36 : Int))
  | 11 => some ((939 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0861 : SmokeLabel -> Option (State × Int)
  | 7 => some ((954 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0862 : SmokeLabel -> Option (State × Int)
  | 7 => some ((955 : State), (-36 : Int))
  | 11 => some ((940 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0863 : SmokeLabel -> Option (State × Int)
  | 10 => some ((941 : State), (-117 : Int))
  | 12 => some ((949 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0864 : SmokeLabel -> Option (State × Int)
  | 2 => some ((957 : State), (96 : Int))
  | 10 => some ((943 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0865 : SmokeLabel -> Option (State × Int)
  | 2 => some ((958 : State), (96 : Int))
  | 10 => some ((944 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0866 : SmokeLabel -> Option (State × Int)
  | 1 => some ((959 : State), (-124 : Int))
  | 10 => some ((948 : State), (-21 : Int))
  | 12 => some ((956 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0867 : SmokeLabel -> Option (State × Int)
  | 6 => some ((961 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0868 : SmokeLabel -> Option (State × Int)
  | 6 => some ((962 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0869 : SmokeLabel -> Option (State × Int)
  | 6 => some ((963 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0870 : SmokeLabel -> Option (State × Int)
  | 6 => some ((964 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0871 : SmokeLabel -> Option (State × Int)
  | 6 => some ((965 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0872 : SmokeLabel -> Option (State × Int)
  | 2 => some ((966 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0873 : SmokeLabel -> Option (State × Int)
  | 2 => some ((967 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0874 : SmokeLabel -> Option (State × Int)
  | 12 => some ((960 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0875 : SmokeLabel -> Option (State × Int)
  | 7 => some ((969 : State), (96 : Int))
  | 13 => some ((968 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0876 : SmokeLabel -> Option (State × Int)
  | 2 => some ((3 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0877 : SmokeLabel -> Option (State × Int)
  | 2 => some ((5 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0878 : SmokeLabel -> Option (State × Int)
  | 2 => some ((6 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0879 : SmokeLabel -> Option (State × Int)
  | 2 => some ((8 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0880 : SmokeLabel -> Option (State × Int)
  | 2 => some ((9 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0881 : SmokeLabel -> Option (State × Int)
  | 2 => some ((10 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0882 : SmokeLabel -> Option (State × Int)
  | 2 => some ((11 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0883 : SmokeLabel -> Option (State × Int)
  | 2 => some ((13 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0884 : SmokeLabel -> Option (State × Int)
  | 2 => some ((14 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0885 : SmokeLabel -> Option (State × Int)
  | 2 => some ((15 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0886 : SmokeLabel -> Option (State × Int)
  | 2 => some ((16 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0887 : SmokeLabel -> Option (State × Int)
  | 2 => some ((18 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0888 : SmokeLabel -> Option (State × Int)
  | 2 => some ((19 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0889 : SmokeLabel -> Option (State × Int)
  | 2 => some ((20 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0890 : SmokeLabel -> Option (State × Int)
  | 2 => some ((21 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0891 : SmokeLabel -> Option (State × Int)
  | 2 => some ((23 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0892 : SmokeLabel -> Option (State × Int)
  | 2 => some ((24 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0893 : SmokeLabel -> Option (State × Int)
  | 2 => some ((25 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0894 : SmokeLabel -> Option (State × Int)
  | 2 => some ((26 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0895 : SmokeLabel -> Option (State × Int)
  | 2 => some ((28 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0896 : SmokeLabel -> Option (State × Int)
  | 2 => some ((29 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0897 : SmokeLabel -> Option (State × Int)
  | 2 => some ((30 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0898 : SmokeLabel -> Option (State × Int)
  | 2 => some ((31 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0899 : SmokeLabel -> Option (State × Int)
  | 2 => some ((32 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0900 : SmokeLabel -> Option (State × Int)
  | 2 => some ((33 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0901 : SmokeLabel -> Option (State × Int)
  | 2 => some ((34 : State), (-144 : Int))
  | _ => none

def graphSmokeNext_s0902 : SmokeLabel -> Option (State × Int)
  | 6 => some ((46 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0903 : SmokeLabel -> Option (State × Int)
  | 6 => some ((47 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0904 : SmokeLabel -> Option (State × Int)
  | 6 => some ((48 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0905 : SmokeLabel -> Option (State × Int)
  | 12 => some ((1 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0906 : SmokeLabel -> Option (State × Int)
  | 12 => some ((2 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0907 : SmokeLabel -> Option (State × Int)
  | 12 => some ((4 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0908 : SmokeLabel -> Option (State × Int)
  | 12 => some ((7 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0909 : SmokeLabel -> Option (State × Int)
  | 12 => some ((12 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0910 : SmokeLabel -> Option (State × Int)
  | 12 => some ((17 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0911 : SmokeLabel -> Option (State × Int)
  | 12 => some ((22 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0912 : SmokeLabel -> Option (State × Int)
  | 12 => some ((27 : State), (-54 : Int))
  | _ => none

def graphSmokeNext_s0913 : SmokeLabel -> Option (State × Int)
  | 6 => some ((50 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0914 : SmokeLabel -> Option (State × Int)
  | 6 => some ((51 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0915 : SmokeLabel -> Option (State × Int)
  | 6 => some ((52 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0916 : SmokeLabel -> Option (State × Int)
  | 6 => some ((53 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0917 : SmokeLabel -> Option (State × Int)
  | 6 => some ((54 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0918 : SmokeLabel -> Option (State × Int)
  | 6 => some ((55 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0919 : SmokeLabel -> Option (State × Int)
  | 6 => some ((56 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0920 : SmokeLabel -> Option (State × Int)
  | 6 => some ((58 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0921 : SmokeLabel -> Option (State × Int)
  | 3 => some ((60 : State), (96 : Int))
  | 13 => some ((35 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0922 : SmokeLabel -> Option (State × Int)
  | 3 => some ((61 : State), (96 : Int))
  | 13 => some ((36 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0923 : SmokeLabel -> Option (State × Int)
  | 3 => some ((62 : State), (96 : Int))
  | 13 => some ((37 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0924 : SmokeLabel -> Option (State × Int)
  | 3 => some ((63 : State), (96 : Int))
  | 13 => some ((38 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0925 : SmokeLabel -> Option (State × Int)
  | 3 => some ((64 : State), (96 : Int))
  | 13 => some ((39 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0926 : SmokeLabel -> Option (State × Int)
  | 3 => some ((65 : State), (96 : Int))
  | 13 => some ((40 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0927 : SmokeLabel -> Option (State × Int)
  | 3 => some ((66 : State), (96 : Int))
  | 13 => some ((41 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0928 : SmokeLabel -> Option (State × Int)
  | 3 => some ((67 : State), (96 : Int))
  | 13 => some ((42 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0929 : SmokeLabel -> Option (State × Int)
  | 3 => some ((68 : State), (96 : Int))
  | 13 => some ((43 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0930 : SmokeLabel -> Option (State × Int)
  | 3 => some ((69 : State), (96 : Int))
  | 13 => some ((44 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0931 : SmokeLabel -> Option (State × Int)
  | 5 => some ((77 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0932 : SmokeLabel -> Option (State × Int)
  | 5 => some ((78 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0933 : SmokeLabel -> Option (State × Int)
  | 5 => some ((79 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0934 : SmokeLabel -> Option (State × Int)
  | 5 => some ((80 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0935 : SmokeLabel -> Option (State × Int)
  | 5 => some ((81 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0936 : SmokeLabel -> Option (State × Int)
  | 5 => some ((83 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0937 : SmokeLabel -> Option (State × Int)
  | 10 => some ((1 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0938 : SmokeLabel -> Option (State × Int)
  | 10 => some ((4 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0939 : SmokeLabel -> Option (State × Int)
  | 10 => some ((7 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0940 : SmokeLabel -> Option (State × Int)
  | 10 => some ((27 : State), (81 : Int))
  | _ => none

def graphSmokeNext_s0941 : SmokeLabel -> Option (State × Int)
  | 11 => some ((35 : State), (-117 : Int))
  | 12 => some ((70 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0942 : SmokeLabel -> Option (State × Int)
  | 11 => some ((42 : State), (-117 : Int))
  | 12 => some ((76 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0943 : SmokeLabel -> Option (State × Int)
  | 11 => some ((45 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0944 : SmokeLabel -> Option (State × Int)
  | 0 => some ((84 : State), (96 : Int))
  | 11 => some ((49 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0945 : SmokeLabel -> Option (State × Int)
  | 0 => some ((85 : State), (96 : Int))
  | 11 => some ((57 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0946 : SmokeLabel -> Option (State × Int)
  | 3 => some ((90 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0947 : SmokeLabel -> Option (State × Int)
  | 3 => some ((91 : State), (-124 : Int))
  | _ => none

def graphSmokeNext_s0948 : SmokeLabel -> Option (State × Int)
  | 11 => some ((59 : State), (-21 : Int))
  | 12 => some ((86 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0949 : SmokeLabel -> Option (State × Int)
  | 3 => some ((93 : State), (96 : Int))
  | 10 => some ((70 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0950 : SmokeLabel -> Option (State × Int)
  | 3 => some ((94 : State), (96 : Int))
  | 10 => some ((71 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0951 : SmokeLabel -> Option (State × Int)
  | 3 => some ((95 : State), (96 : Int))
  | 10 => some ((72 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0952 : SmokeLabel -> Option (State × Int)
  | 3 => some ((96 : State), (96 : Int))
  | 10 => some ((73 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0953 : SmokeLabel -> Option (State × Int)
  | 3 => some ((97 : State), (96 : Int))
  | 10 => some ((74 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0954 : SmokeLabel -> Option (State × Int)
  | 3 => some ((99 : State), (96 : Int))
  | 10 => some ((75 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0955 : SmokeLabel -> Option (State × Int)
  | 3 => some ((100 : State), (96 : Int))
  | 10 => some ((82 : State), (-117 : Int))
  | _ => none

def graphSmokeNext_s0956 : SmokeLabel -> Option (State × Int)
  | 10 => some ((86 : State), (-21 : Int))
  | 13 => some ((92 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0957 : SmokeLabel -> Option (State × Int)
  | 10 => some ((87 : State), (-21 : Int))
  | 13 => some ((98 : State), (114 : Int))
  | _ => none

def graphSmokeNext_s0958 : SmokeLabel -> Option (State × Int)
  | 0 => some ((102 : State), (-124 : Int))
  | 10 => some ((88 : State), (-21 : Int))
  | _ => none

def graphSmokeNext_s0959 : SmokeLabel -> Option (State × Int)
  | 10 => some ((89 : State), (103 : Int))
  | 12 => some ((101 : State), (-10 : Int))
  | _ => none

def graphSmokeNext_s0960 : SmokeLabel -> Option (State × Int)
  | 3 => some ((104 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0961 : SmokeLabel -> Option (State × Int)
  | 3 => some ((105 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0962 : SmokeLabel -> Option (State × Int)
  | 3 => some ((106 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0963 : SmokeLabel -> Option (State × Int)
  | 3 => some ((107 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0964 : SmokeLabel -> Option (State × Int)
  | 3 => some ((108 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0965 : SmokeLabel -> Option (State × Int)
  | 3 => some ((109 : State), (-36 : Int))
  | _ => none

def graphSmokeNext_s0966 : SmokeLabel -> Option (State × Int)
  | 6 => some ((110 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0967 : SmokeLabel -> Option (State × Int)
  | 6 => some ((112 : State), (96 : Int))
  | _ => none

def graphSmokeNext_s0968 : SmokeLabel -> Option (State × Int)
  | 12 => some ((103 : State), (-18 : Int))
  | _ => none

def graphSmokeNext_s0969 : SmokeLabel -> Option (State × Int)
  | 5 => some ((113 : State), (-124 : Int))
  | 12 => some ((111 : State), (114 : Int))
  | _ => none

def graphSmokeNext : State -> SmokeLabel -> Option (State × Int)
  | 0 => graphSmokeNext_s0000
  | 1 => graphSmokeNext_s0001
  | 2 => graphSmokeNext_s0002
  | 3 => graphSmokeNext_s0003
  | 4 => graphSmokeNext_s0004
  | 5 => graphSmokeNext_s0005
  | 6 => graphSmokeNext_s0006
  | 7 => graphSmokeNext_s0007
  | 8 => graphSmokeNext_s0008
  | 9 => graphSmokeNext_s0009
  | 10 => graphSmokeNext_s0010
  | 11 => graphSmokeNext_s0011
  | 12 => graphSmokeNext_s0012
  | 13 => graphSmokeNext_s0013
  | 14 => graphSmokeNext_s0014
  | 15 => graphSmokeNext_s0015
  | 16 => graphSmokeNext_s0016
  | 17 => graphSmokeNext_s0017
  | 18 => graphSmokeNext_s0018
  | 19 => graphSmokeNext_s0019
  | 20 => graphSmokeNext_s0020
  | 21 => graphSmokeNext_s0021
  | 22 => graphSmokeNext_s0022
  | 23 => graphSmokeNext_s0023
  | 24 => graphSmokeNext_s0024
  | 25 => graphSmokeNext_s0025
  | 26 => graphSmokeNext_s0026
  | 27 => graphSmokeNext_s0027
  | 28 => graphSmokeNext_s0028
  | 29 => graphSmokeNext_s0029
  | 30 => graphSmokeNext_s0030
  | 31 => graphSmokeNext_s0031
  | 32 => graphSmokeNext_s0032
  | 33 => graphSmokeNext_s0033
  | 34 => graphSmokeNext_s0034
  | 35 => graphSmokeNext_s0035
  | 36 => graphSmokeNext_s0036
  | 37 => graphSmokeNext_s0037
  | 38 => graphSmokeNext_s0038
  | 39 => graphSmokeNext_s0039
  | 40 => graphSmokeNext_s0040
  | 41 => graphSmokeNext_s0041
  | 42 => graphSmokeNext_s0042
  | 43 => graphSmokeNext_s0043
  | 44 => graphSmokeNext_s0044
  | 45 => graphSmokeNext_s0045
  | 46 => graphSmokeNext_s0046
  | 47 => graphSmokeNext_s0047
  | 48 => graphSmokeNext_s0048
  | 49 => graphSmokeNext_s0049
  | 50 => graphSmokeNext_s0050
  | 51 => graphSmokeNext_s0051
  | 52 => graphSmokeNext_s0052
  | 53 => graphSmokeNext_s0053
  | 54 => graphSmokeNext_s0054
  | 55 => graphSmokeNext_s0055
  | 56 => graphSmokeNext_s0056
  | 57 => graphSmokeNext_s0057
  | 58 => graphSmokeNext_s0058
  | 59 => graphSmokeNext_s0059
  | 60 => graphSmokeNext_s0060
  | 61 => graphSmokeNext_s0061
  | 62 => graphSmokeNext_s0062
  | 63 => graphSmokeNext_s0063
  | 64 => graphSmokeNext_s0064
  | 65 => graphSmokeNext_s0065
  | 66 => graphSmokeNext_s0066
  | 67 => graphSmokeNext_s0067
  | 68 => graphSmokeNext_s0068
  | 69 => graphSmokeNext_s0069
  | 70 => graphSmokeNext_s0070
  | 71 => graphSmokeNext_s0071
  | 72 => graphSmokeNext_s0072
  | 73 => graphSmokeNext_s0073
  | 74 => graphSmokeNext_s0074
  | 75 => graphSmokeNext_s0075
  | 76 => graphSmokeNext_s0076
  | 77 => graphSmokeNext_s0077
  | 78 => graphSmokeNext_s0078
  | 79 => graphSmokeNext_s0079
  | 80 => graphSmokeNext_s0080
  | 81 => graphSmokeNext_s0081
  | 82 => graphSmokeNext_s0082
  | 83 => graphSmokeNext_s0083
  | 84 => graphSmokeNext_s0084
  | 85 => graphSmokeNext_s0085
  | 86 => graphSmokeNext_s0086
  | 87 => graphSmokeNext_s0087
  | 88 => graphSmokeNext_s0088
  | 89 => graphSmokeNext_s0089
  | 90 => graphSmokeNext_s0090
  | 91 => graphSmokeNext_s0091
  | 92 => graphSmokeNext_s0092
  | 93 => graphSmokeNext_s0093
  | 94 => graphSmokeNext_s0094
  | 95 => graphSmokeNext_s0095
  | 96 => graphSmokeNext_s0096
  | 97 => graphSmokeNext_s0097
  | 98 => graphSmokeNext_s0098
  | 99 => graphSmokeNext_s0099
  | 100 => graphSmokeNext_s0100
  | 101 => graphSmokeNext_s0101
  | 102 => graphSmokeNext_s0102
  | 103 => graphSmokeNext_s0103
  | 104 => graphSmokeNext_s0104
  | 105 => graphSmokeNext_s0105
  | 106 => graphSmokeNext_s0106
  | 107 => graphSmokeNext_s0107
  | 108 => graphSmokeNext_s0108
  | 109 => graphSmokeNext_s0109
  | 110 => graphSmokeNext_s0110
  | 111 => graphSmokeNext_s0111
  | 112 => graphSmokeNext_s0112
  | 113 => graphSmokeNext_s0113
  | 114 => graphSmokeNext_s0114
  | 115 => graphSmokeNext_s0115
  | 116 => graphSmokeNext_s0116
  | 117 => graphSmokeNext_s0117
  | 118 => graphSmokeNext_s0118
  | 119 => graphSmokeNext_s0119
  | 120 => graphSmokeNext_s0120
  | 121 => graphSmokeNext_s0121
  | 122 => graphSmokeNext_s0122
  | 123 => graphSmokeNext_s0123
  | 124 => graphSmokeNext_s0124
  | 125 => graphSmokeNext_s0125
  | 126 => graphSmokeNext_s0126
  | 127 => graphSmokeNext_s0127
  | 128 => graphSmokeNext_s0128
  | 129 => graphSmokeNext_s0129
  | 130 => graphSmokeNext_s0130
  | 131 => graphSmokeNext_s0131
  | 132 => graphSmokeNext_s0132
  | 133 => graphSmokeNext_s0133
  | 134 => graphSmokeNext_s0134
  | 135 => graphSmokeNext_s0135
  | 136 => graphSmokeNext_s0136
  | 137 => graphSmokeNext_s0137
  | 138 => graphSmokeNext_s0138
  | 139 => graphSmokeNext_s0139
  | 140 => graphSmokeNext_s0140
  | 141 => graphSmokeNext_s0141
  | 142 => graphSmokeNext_s0142
  | 143 => graphSmokeNext_s0143
  | 144 => graphSmokeNext_s0144
  | 145 => graphSmokeNext_s0145
  | 146 => graphSmokeNext_s0146
  | 147 => graphSmokeNext_s0147
  | 148 => graphSmokeNext_s0148
  | 149 => graphSmokeNext_s0149
  | 150 => graphSmokeNext_s0150
  | 151 => graphSmokeNext_s0151
  | 152 => graphSmokeNext_s0152
  | 153 => graphSmokeNext_s0153
  | 154 => graphSmokeNext_s0154
  | 155 => graphSmokeNext_s0155
  | 156 => graphSmokeNext_s0156
  | 157 => graphSmokeNext_s0157
  | 158 => graphSmokeNext_s0158
  | 159 => graphSmokeNext_s0159
  | 160 => graphSmokeNext_s0160
  | 161 => graphSmokeNext_s0161
  | 162 => graphSmokeNext_s0162
  | 163 => graphSmokeNext_s0163
  | 164 => graphSmokeNext_s0164
  | 165 => graphSmokeNext_s0165
  | 166 => graphSmokeNext_s0166
  | 167 => graphSmokeNext_s0167
  | 168 => graphSmokeNext_s0168
  | 169 => graphSmokeNext_s0169
  | 170 => graphSmokeNext_s0170
  | 171 => graphSmokeNext_s0171
  | 172 => graphSmokeNext_s0172
  | 173 => graphSmokeNext_s0173
  | 174 => graphSmokeNext_s0174
  | 175 => graphSmokeNext_s0175
  | 176 => graphSmokeNext_s0176
  | 177 => graphSmokeNext_s0177
  | 178 => graphSmokeNext_s0178
  | 179 => graphSmokeNext_s0179
  | 180 => graphSmokeNext_s0180
  | 181 => graphSmokeNext_s0181
  | 182 => graphSmokeNext_s0182
  | 183 => graphSmokeNext_s0183
  | 184 => graphSmokeNext_s0184
  | 185 => graphSmokeNext_s0185
  | 186 => graphSmokeNext_s0186
  | 187 => graphSmokeNext_s0187
  | 188 => graphSmokeNext_s0188
  | 189 => graphSmokeNext_s0189
  | 190 => graphSmokeNext_s0190
  | 191 => graphSmokeNext_s0191
  | 192 => graphSmokeNext_s0192
  | 193 => graphSmokeNext_s0193
  | 194 => graphSmokeNext_s0194
  | 195 => graphSmokeNext_s0195
  | 196 => graphSmokeNext_s0196
  | 197 => graphSmokeNext_s0197
  | 198 => graphSmokeNext_s0198
  | 199 => graphSmokeNext_s0199
  | 200 => graphSmokeNext_s0200
  | 201 => graphSmokeNext_s0201
  | 202 => graphSmokeNext_s0202
  | 203 => graphSmokeNext_s0203
  | 204 => graphSmokeNext_s0204
  | 205 => graphSmokeNext_s0205
  | 206 => graphSmokeNext_s0206
  | 207 => graphSmokeNext_s0207
  | 208 => graphSmokeNext_s0208
  | 209 => graphSmokeNext_s0209
  | 210 => graphSmokeNext_s0210
  | 211 => graphSmokeNext_s0211
  | 212 => graphSmokeNext_s0212
  | 213 => graphSmokeNext_s0213
  | 214 => graphSmokeNext_s0214
  | 215 => graphSmokeNext_s0215
  | 216 => graphSmokeNext_s0216
  | 217 => graphSmokeNext_s0217
  | 218 => graphSmokeNext_s0218
  | 219 => graphSmokeNext_s0219
  | 220 => graphSmokeNext_s0220
  | 221 => graphSmokeNext_s0221
  | 222 => graphSmokeNext_s0222
  | 223 => graphSmokeNext_s0223
  | 224 => graphSmokeNext_s0224
  | 225 => graphSmokeNext_s0225
  | 226 => graphSmokeNext_s0226
  | 227 => graphSmokeNext_s0227
  | 228 => graphSmokeNext_s0228
  | 229 => graphSmokeNext_s0229
  | 230 => graphSmokeNext_s0230
  | 231 => graphSmokeNext_s0231
  | 232 => graphSmokeNext_s0232
  | 233 => graphSmokeNext_s0233
  | 234 => graphSmokeNext_s0234
  | 235 => graphSmokeNext_s0235
  | 236 => graphSmokeNext_s0236
  | 237 => graphSmokeNext_s0237
  | 238 => graphSmokeNext_s0238
  | 239 => graphSmokeNext_s0239
  | 240 => graphSmokeNext_s0240
  | 241 => graphSmokeNext_s0241
  | 242 => graphSmokeNext_s0242
  | 243 => graphSmokeNext_s0243
  | 244 => graphSmokeNext_s0244
  | 245 => graphSmokeNext_s0245
  | 246 => graphSmokeNext_s0246
  | 247 => graphSmokeNext_s0247
  | 248 => graphSmokeNext_s0248
  | 249 => graphSmokeNext_s0249
  | 250 => graphSmokeNext_s0250
  | 251 => graphSmokeNext_s0251
  | 252 => graphSmokeNext_s0252
  | 253 => graphSmokeNext_s0253
  | 254 => graphSmokeNext_s0254
  | 255 => graphSmokeNext_s0255
  | 256 => graphSmokeNext_s0256
  | 257 => graphSmokeNext_s0257
  | 258 => graphSmokeNext_s0258
  | 259 => graphSmokeNext_s0259
  | 260 => graphSmokeNext_s0260
  | 261 => graphSmokeNext_s0261
  | 262 => graphSmokeNext_s0262
  | 263 => graphSmokeNext_s0263
  | 264 => graphSmokeNext_s0264
  | 265 => graphSmokeNext_s0265
  | 266 => graphSmokeNext_s0266
  | 267 => graphSmokeNext_s0267
  | 268 => graphSmokeNext_s0268
  | 269 => graphSmokeNext_s0269
  | 270 => graphSmokeNext_s0270
  | 271 => graphSmokeNext_s0271
  | 272 => graphSmokeNext_s0272
  | 273 => graphSmokeNext_s0273
  | 274 => graphSmokeNext_s0274
  | 275 => graphSmokeNext_s0275
  | 276 => graphSmokeNext_s0276
  | 277 => graphSmokeNext_s0277
  | 278 => graphSmokeNext_s0278
  | 279 => graphSmokeNext_s0279
  | 280 => graphSmokeNext_s0280
  | 281 => graphSmokeNext_s0281
  | 282 => graphSmokeNext_s0282
  | 283 => graphSmokeNext_s0283
  | 284 => graphSmokeNext_s0284
  | 285 => graphSmokeNext_s0285
  | 286 => graphSmokeNext_s0286
  | 287 => graphSmokeNext_s0287
  | 288 => graphSmokeNext_s0288
  | 289 => graphSmokeNext_s0289
  | 290 => graphSmokeNext_s0290
  | 291 => graphSmokeNext_s0291
  | 292 => graphSmokeNext_s0292
  | 293 => graphSmokeNext_s0293
  | 294 => graphSmokeNext_s0294
  | 295 => graphSmokeNext_s0295
  | 296 => graphSmokeNext_s0296
  | 297 => graphSmokeNext_s0297
  | 298 => graphSmokeNext_s0298
  | 299 => graphSmokeNext_s0299
  | 300 => graphSmokeNext_s0300
  | 301 => graphSmokeNext_s0301
  | 302 => graphSmokeNext_s0302
  | 303 => graphSmokeNext_s0303
  | 304 => graphSmokeNext_s0304
  | 305 => graphSmokeNext_s0305
  | 306 => graphSmokeNext_s0306
  | 307 => graphSmokeNext_s0307
  | 308 => graphSmokeNext_s0308
  | 309 => graphSmokeNext_s0309
  | 310 => graphSmokeNext_s0310
  | 311 => graphSmokeNext_s0311
  | 312 => graphSmokeNext_s0312
  | 313 => graphSmokeNext_s0313
  | 314 => graphSmokeNext_s0314
  | 315 => graphSmokeNext_s0315
  | 316 => graphSmokeNext_s0316
  | 317 => graphSmokeNext_s0317
  | 318 => graphSmokeNext_s0318
  | 319 => graphSmokeNext_s0319
  | 320 => graphSmokeNext_s0320
  | 321 => graphSmokeNext_s0321
  | 322 => graphSmokeNext_s0322
  | 323 => graphSmokeNext_s0323
  | 324 => graphSmokeNext_s0324
  | 325 => graphSmokeNext_s0325
  | 326 => graphSmokeNext_s0326
  | 327 => graphSmokeNext_s0327
  | 328 => graphSmokeNext_s0328
  | 329 => graphSmokeNext_s0329
  | 330 => graphSmokeNext_s0330
  | 331 => graphSmokeNext_s0331
  | 332 => graphSmokeNext_s0332
  | 333 => graphSmokeNext_s0333
  | 334 => graphSmokeNext_s0334
  | 335 => graphSmokeNext_s0335
  | 336 => graphSmokeNext_s0336
  | 337 => graphSmokeNext_s0337
  | 338 => graphSmokeNext_s0338
  | 339 => graphSmokeNext_s0339
  | 340 => graphSmokeNext_s0340
  | 341 => graphSmokeNext_s0341
  | 342 => graphSmokeNext_s0342
  | 343 => graphSmokeNext_s0343
  | 344 => graphSmokeNext_s0344
  | 345 => graphSmokeNext_s0345
  | 346 => graphSmokeNext_s0346
  | 347 => graphSmokeNext_s0347
  | 348 => graphSmokeNext_s0348
  | 349 => graphSmokeNext_s0349
  | 350 => graphSmokeNext_s0350
  | 351 => graphSmokeNext_s0351
  | 352 => graphSmokeNext_s0352
  | 353 => graphSmokeNext_s0353
  | 354 => graphSmokeNext_s0354
  | 355 => graphSmokeNext_s0355
  | 356 => graphSmokeNext_s0356
  | 357 => graphSmokeNext_s0357
  | 358 => graphSmokeNext_s0358
  | 359 => graphSmokeNext_s0359
  | 360 => graphSmokeNext_s0360
  | 361 => graphSmokeNext_s0361
  | 362 => graphSmokeNext_s0362
  | 363 => graphSmokeNext_s0363
  | 364 => graphSmokeNext_s0364
  | 365 => graphSmokeNext_s0365
  | 366 => graphSmokeNext_s0366
  | 367 => graphSmokeNext_s0367
  | 368 => graphSmokeNext_s0368
  | 369 => graphSmokeNext_s0369
  | 370 => graphSmokeNext_s0370
  | 371 => graphSmokeNext_s0371
  | 372 => graphSmokeNext_s0372
  | 373 => graphSmokeNext_s0373
  | 374 => graphSmokeNext_s0374
  | 375 => graphSmokeNext_s0375
  | 376 => graphSmokeNext_s0376
  | 377 => graphSmokeNext_s0377
  | 378 => graphSmokeNext_s0378
  | 379 => graphSmokeNext_s0379
  | 380 => graphSmokeNext_s0380
  | 381 => graphSmokeNext_s0381
  | 382 => graphSmokeNext_s0382
  | 383 => graphSmokeNext_s0383
  | 384 => graphSmokeNext_s0384
  | 385 => graphSmokeNext_s0385
  | 386 => graphSmokeNext_s0386
  | 387 => graphSmokeNext_s0387
  | 388 => graphSmokeNext_s0388
  | 389 => graphSmokeNext_s0389
  | 390 => graphSmokeNext_s0390
  | 391 => graphSmokeNext_s0391
  | 392 => graphSmokeNext_s0392
  | 393 => graphSmokeNext_s0393
  | 394 => graphSmokeNext_s0394
  | 395 => graphSmokeNext_s0395
  | 396 => graphSmokeNext_s0396
  | 397 => graphSmokeNext_s0397
  | 398 => graphSmokeNext_s0398
  | 399 => graphSmokeNext_s0399
  | 400 => graphSmokeNext_s0400
  | 401 => graphSmokeNext_s0401
  | 402 => graphSmokeNext_s0402
  | 403 => graphSmokeNext_s0403
  | 404 => graphSmokeNext_s0404
  | 405 => graphSmokeNext_s0405
  | 406 => graphSmokeNext_s0406
  | 407 => graphSmokeNext_s0407
  | 408 => graphSmokeNext_s0408
  | 409 => graphSmokeNext_s0409
  | 410 => graphSmokeNext_s0410
  | 411 => graphSmokeNext_s0411
  | 412 => graphSmokeNext_s0412
  | 413 => graphSmokeNext_s0413
  | 414 => graphSmokeNext_s0414
  | 415 => graphSmokeNext_s0415
  | 416 => graphSmokeNext_s0416
  | 417 => graphSmokeNext_s0417
  | 418 => graphSmokeNext_s0418
  | 419 => graphSmokeNext_s0419
  | 420 => graphSmokeNext_s0420
  | 421 => graphSmokeNext_s0421
  | 422 => graphSmokeNext_s0422
  | 423 => graphSmokeNext_s0423
  | 424 => graphSmokeNext_s0424
  | 425 => graphSmokeNext_s0425
  | 426 => graphSmokeNext_s0426
  | 427 => graphSmokeNext_s0427
  | 428 => graphSmokeNext_s0428
  | 429 => graphSmokeNext_s0429
  | 430 => graphSmokeNext_s0430
  | 431 => graphSmokeNext_s0431
  | 432 => graphSmokeNext_s0432
  | 433 => graphSmokeNext_s0433
  | 434 => graphSmokeNext_s0434
  | 435 => graphSmokeNext_s0435
  | 436 => graphSmokeNext_s0436
  | 437 => graphSmokeNext_s0437
  | 438 => graphSmokeNext_s0438
  | 439 => graphSmokeNext_s0439
  | 440 => graphSmokeNext_s0440
  | 441 => graphSmokeNext_s0441
  | 442 => graphSmokeNext_s0442
  | 443 => graphSmokeNext_s0443
  | 444 => graphSmokeNext_s0444
  | 445 => graphSmokeNext_s0445
  | 446 => graphSmokeNext_s0446
  | 447 => graphSmokeNext_s0447
  | 448 => graphSmokeNext_s0448
  | 449 => graphSmokeNext_s0449
  | 450 => graphSmokeNext_s0450
  | 451 => graphSmokeNext_s0451
  | 452 => graphSmokeNext_s0452
  | 453 => graphSmokeNext_s0453
  | 454 => graphSmokeNext_s0454
  | 455 => graphSmokeNext_s0455
  | 456 => graphSmokeNext_s0456
  | 457 => graphSmokeNext_s0457
  | 458 => graphSmokeNext_s0458
  | 459 => graphSmokeNext_s0459
  | 460 => graphSmokeNext_s0460
  | 461 => graphSmokeNext_s0461
  | 462 => graphSmokeNext_s0462
  | 463 => graphSmokeNext_s0463
  | 464 => graphSmokeNext_s0464
  | 465 => graphSmokeNext_s0465
  | 466 => graphSmokeNext_s0466
  | 467 => graphSmokeNext_s0467
  | 468 => graphSmokeNext_s0468
  | 469 => graphSmokeNext_s0469
  | 470 => graphSmokeNext_s0470
  | 471 => graphSmokeNext_s0471
  | 472 => graphSmokeNext_s0472
  | 473 => graphSmokeNext_s0473
  | 474 => graphSmokeNext_s0474
  | 475 => graphSmokeNext_s0475
  | 476 => graphSmokeNext_s0476
  | 477 => graphSmokeNext_s0477
  | 478 => graphSmokeNext_s0478
  | 479 => graphSmokeNext_s0479
  | 480 => graphSmokeNext_s0480
  | 481 => graphSmokeNext_s0481
  | 482 => graphSmokeNext_s0482
  | 483 => graphSmokeNext_s0483
  | 484 => graphSmokeNext_s0484
  | 485 => graphSmokeNext_s0485
  | 486 => graphSmokeNext_s0486
  | 487 => graphSmokeNext_s0487
  | 488 => graphSmokeNext_s0488
  | 489 => graphSmokeNext_s0489
  | 490 => graphSmokeNext_s0490
  | 491 => graphSmokeNext_s0491
  | 492 => graphSmokeNext_s0492
  | 493 => graphSmokeNext_s0493
  | 494 => graphSmokeNext_s0494
  | 495 => graphSmokeNext_s0495
  | 496 => graphSmokeNext_s0496
  | 497 => graphSmokeNext_s0497
  | 498 => graphSmokeNext_s0498
  | 499 => graphSmokeNext_s0499
  | 500 => graphSmokeNext_s0500
  | 501 => graphSmokeNext_s0501
  | 502 => graphSmokeNext_s0502
  | 503 => graphSmokeNext_s0503
  | 504 => graphSmokeNext_s0504
  | 505 => graphSmokeNext_s0505
  | 506 => graphSmokeNext_s0506
  | 507 => graphSmokeNext_s0507
  | 508 => graphSmokeNext_s0508
  | 509 => graphSmokeNext_s0509
  | 510 => graphSmokeNext_s0510
  | 511 => graphSmokeNext_s0511
  | 512 => graphSmokeNext_s0512
  | 513 => graphSmokeNext_s0513
  | 514 => graphSmokeNext_s0514
  | 515 => graphSmokeNext_s0515
  | 516 => graphSmokeNext_s0516
  | 517 => graphSmokeNext_s0517
  | 518 => graphSmokeNext_s0518
  | 519 => graphSmokeNext_s0519
  | 520 => graphSmokeNext_s0520
  | 521 => graphSmokeNext_s0521
  | 522 => graphSmokeNext_s0522
  | 523 => graphSmokeNext_s0523
  | 524 => graphSmokeNext_s0524
  | 525 => graphSmokeNext_s0525
  | 526 => graphSmokeNext_s0526
  | 527 => graphSmokeNext_s0527
  | 528 => graphSmokeNext_s0528
  | 529 => graphSmokeNext_s0529
  | 530 => graphSmokeNext_s0530
  | 531 => graphSmokeNext_s0531
  | 532 => graphSmokeNext_s0532
  | 533 => graphSmokeNext_s0533
  | 534 => graphSmokeNext_s0534
  | 535 => graphSmokeNext_s0535
  | 536 => graphSmokeNext_s0536
  | 537 => graphSmokeNext_s0537
  | 538 => graphSmokeNext_s0538
  | 539 => graphSmokeNext_s0539
  | 540 => graphSmokeNext_s0540
  | 541 => graphSmokeNext_s0541
  | 542 => graphSmokeNext_s0542
  | 543 => graphSmokeNext_s0543
  | 544 => graphSmokeNext_s0544
  | 545 => graphSmokeNext_s0545
  | 546 => graphSmokeNext_s0546
  | 547 => graphSmokeNext_s0547
  | 548 => graphSmokeNext_s0548
  | 549 => graphSmokeNext_s0549
  | 550 => graphSmokeNext_s0550
  | 551 => graphSmokeNext_s0551
  | 552 => graphSmokeNext_s0552
  | 553 => graphSmokeNext_s0553
  | 554 => graphSmokeNext_s0554
  | 555 => graphSmokeNext_s0555
  | 556 => graphSmokeNext_s0556
  | 557 => graphSmokeNext_s0557
  | 558 => graphSmokeNext_s0558
  | 559 => graphSmokeNext_s0559
  | 560 => graphSmokeNext_s0560
  | 561 => graphSmokeNext_s0561
  | 562 => graphSmokeNext_s0562
  | 563 => graphSmokeNext_s0563
  | 564 => graphSmokeNext_s0564
  | 565 => graphSmokeNext_s0565
  | 566 => graphSmokeNext_s0566
  | 567 => graphSmokeNext_s0567
  | 568 => graphSmokeNext_s0568
  | 569 => graphSmokeNext_s0569
  | 570 => graphSmokeNext_s0570
  | 571 => graphSmokeNext_s0571
  | 572 => graphSmokeNext_s0572
  | 573 => graphSmokeNext_s0573
  | 574 => graphSmokeNext_s0574
  | 575 => graphSmokeNext_s0575
  | 576 => graphSmokeNext_s0576
  | 577 => graphSmokeNext_s0577
  | 578 => graphSmokeNext_s0578
  | 579 => graphSmokeNext_s0579
  | 580 => graphSmokeNext_s0580
  | 581 => graphSmokeNext_s0581
  | 582 => graphSmokeNext_s0582
  | 583 => graphSmokeNext_s0583
  | 584 => graphSmokeNext_s0584
  | 585 => graphSmokeNext_s0585
  | 586 => graphSmokeNext_s0586
  | 587 => graphSmokeNext_s0587
  | 588 => graphSmokeNext_s0588
  | 589 => graphSmokeNext_s0589
  | 590 => graphSmokeNext_s0590
  | 591 => graphSmokeNext_s0591
  | 592 => graphSmokeNext_s0592
  | 593 => graphSmokeNext_s0593
  | 594 => graphSmokeNext_s0594
  | 595 => graphSmokeNext_s0595
  | 596 => graphSmokeNext_s0596
  | 597 => graphSmokeNext_s0597
  | 598 => graphSmokeNext_s0598
  | 599 => graphSmokeNext_s0599
  | 600 => graphSmokeNext_s0600
  | 601 => graphSmokeNext_s0601
  | 602 => graphSmokeNext_s0602
  | 603 => graphSmokeNext_s0603
  | 604 => graphSmokeNext_s0604
  | 605 => graphSmokeNext_s0605
  | 606 => graphSmokeNext_s0606
  | 607 => graphSmokeNext_s0607
  | 608 => graphSmokeNext_s0608
  | 609 => graphSmokeNext_s0609
  | 610 => graphSmokeNext_s0610
  | 611 => graphSmokeNext_s0611
  | 612 => graphSmokeNext_s0612
  | 613 => graphSmokeNext_s0613
  | 614 => graphSmokeNext_s0614
  | 615 => graphSmokeNext_s0615
  | 616 => graphSmokeNext_s0616
  | 617 => graphSmokeNext_s0617
  | 618 => graphSmokeNext_s0618
  | 619 => graphSmokeNext_s0619
  | 620 => graphSmokeNext_s0620
  | 621 => graphSmokeNext_s0621
  | 622 => graphSmokeNext_s0622
  | 623 => graphSmokeNext_s0623
  | 624 => graphSmokeNext_s0624
  | 625 => graphSmokeNext_s0625
  | 626 => graphSmokeNext_s0626
  | 627 => graphSmokeNext_s0627
  | 628 => graphSmokeNext_s0628
  | 629 => graphSmokeNext_s0629
  | 630 => graphSmokeNext_s0630
  | 631 => graphSmokeNext_s0631
  | 632 => graphSmokeNext_s0632
  | 633 => graphSmokeNext_s0633
  | 634 => graphSmokeNext_s0634
  | 635 => graphSmokeNext_s0635
  | 636 => graphSmokeNext_s0636
  | 637 => graphSmokeNext_s0637
  | 638 => graphSmokeNext_s0638
  | 639 => graphSmokeNext_s0639
  | 640 => graphSmokeNext_s0640
  | 641 => graphSmokeNext_s0641
  | 642 => graphSmokeNext_s0642
  | 643 => graphSmokeNext_s0643
  | 644 => graphSmokeNext_s0644
  | 645 => graphSmokeNext_s0645
  | 646 => graphSmokeNext_s0646
  | 647 => graphSmokeNext_s0647
  | 648 => graphSmokeNext_s0648
  | 649 => graphSmokeNext_s0649
  | 650 => graphSmokeNext_s0650
  | 651 => graphSmokeNext_s0651
  | 652 => graphSmokeNext_s0652
  | 653 => graphSmokeNext_s0653
  | 654 => graphSmokeNext_s0654
  | 655 => graphSmokeNext_s0655
  | 656 => graphSmokeNext_s0656
  | 657 => graphSmokeNext_s0657
  | 658 => graphSmokeNext_s0658
  | 659 => graphSmokeNext_s0659
  | 660 => graphSmokeNext_s0660
  | 661 => graphSmokeNext_s0661
  | 662 => graphSmokeNext_s0662
  | 663 => graphSmokeNext_s0663
  | 664 => graphSmokeNext_s0664
  | 665 => graphSmokeNext_s0665
  | 666 => graphSmokeNext_s0666
  | 667 => graphSmokeNext_s0667
  | 668 => graphSmokeNext_s0668
  | 669 => graphSmokeNext_s0669
  | 670 => graphSmokeNext_s0670
  | 671 => graphSmokeNext_s0671
  | 672 => graphSmokeNext_s0672
  | 673 => graphSmokeNext_s0673
  | 674 => graphSmokeNext_s0674
  | 675 => graphSmokeNext_s0675
  | 676 => graphSmokeNext_s0676
  | 677 => graphSmokeNext_s0677
  | 678 => graphSmokeNext_s0678
  | 679 => graphSmokeNext_s0679
  | 680 => graphSmokeNext_s0680
  | 681 => graphSmokeNext_s0681
  | 682 => graphSmokeNext_s0682
  | 683 => graphSmokeNext_s0683
  | 684 => graphSmokeNext_s0684
  | 685 => graphSmokeNext_s0685
  | 686 => graphSmokeNext_s0686
  | 687 => graphSmokeNext_s0687
  | 688 => graphSmokeNext_s0688
  | 689 => graphSmokeNext_s0689
  | 690 => graphSmokeNext_s0690
  | 691 => graphSmokeNext_s0691
  | 692 => graphSmokeNext_s0692
  | 693 => graphSmokeNext_s0693
  | 694 => graphSmokeNext_s0694
  | 695 => graphSmokeNext_s0695
  | 696 => graphSmokeNext_s0696
  | 697 => graphSmokeNext_s0697
  | 698 => graphSmokeNext_s0698
  | 699 => graphSmokeNext_s0699
  | 700 => graphSmokeNext_s0700
  | 701 => graphSmokeNext_s0701
  | 702 => graphSmokeNext_s0702
  | 703 => graphSmokeNext_s0703
  | 704 => graphSmokeNext_s0704
  | 705 => graphSmokeNext_s0705
  | 706 => graphSmokeNext_s0706
  | 707 => graphSmokeNext_s0707
  | 708 => graphSmokeNext_s0708
  | 709 => graphSmokeNext_s0709
  | 710 => graphSmokeNext_s0710
  | 711 => graphSmokeNext_s0711
  | 712 => graphSmokeNext_s0712
  | 713 => graphSmokeNext_s0713
  | 714 => graphSmokeNext_s0714
  | 715 => graphSmokeNext_s0715
  | 716 => graphSmokeNext_s0716
  | 717 => graphSmokeNext_s0717
  | 718 => graphSmokeNext_s0718
  | 719 => graphSmokeNext_s0719
  | 720 => graphSmokeNext_s0720
  | 721 => graphSmokeNext_s0721
  | 722 => graphSmokeNext_s0722
  | 723 => graphSmokeNext_s0723
  | 724 => graphSmokeNext_s0724
  | 725 => graphSmokeNext_s0725
  | 726 => graphSmokeNext_s0726
  | 727 => graphSmokeNext_s0727
  | 728 => graphSmokeNext_s0728
  | 729 => graphSmokeNext_s0729
  | 730 => graphSmokeNext_s0730
  | 731 => graphSmokeNext_s0731
  | 732 => graphSmokeNext_s0732
  | 733 => graphSmokeNext_s0733
  | 734 => graphSmokeNext_s0734
  | 735 => graphSmokeNext_s0735
  | 736 => graphSmokeNext_s0736
  | 737 => graphSmokeNext_s0737
  | 738 => graphSmokeNext_s0738
  | 739 => graphSmokeNext_s0739
  | 740 => graphSmokeNext_s0740
  | 741 => graphSmokeNext_s0741
  | 742 => graphSmokeNext_s0742
  | 743 => graphSmokeNext_s0743
  | 744 => graphSmokeNext_s0744
  | 745 => graphSmokeNext_s0745
  | 746 => graphSmokeNext_s0746
  | 747 => graphSmokeNext_s0747
  | 748 => graphSmokeNext_s0748
  | 749 => graphSmokeNext_s0749
  | 750 => graphSmokeNext_s0750
  | 751 => graphSmokeNext_s0751
  | 752 => graphSmokeNext_s0752
  | 753 => graphSmokeNext_s0753
  | 754 => graphSmokeNext_s0754
  | 755 => graphSmokeNext_s0755
  | 756 => graphSmokeNext_s0756
  | 757 => graphSmokeNext_s0757
  | 758 => graphSmokeNext_s0758
  | 759 => graphSmokeNext_s0759
  | 760 => graphSmokeNext_s0760
  | 761 => graphSmokeNext_s0761
  | 762 => graphSmokeNext_s0762
  | 763 => graphSmokeNext_s0763
  | 764 => graphSmokeNext_s0764
  | 765 => graphSmokeNext_s0765
  | 766 => graphSmokeNext_s0766
  | 767 => graphSmokeNext_s0767
  | 768 => graphSmokeNext_s0768
  | 769 => graphSmokeNext_s0769
  | 770 => graphSmokeNext_s0770
  | 771 => graphSmokeNext_s0771
  | 772 => graphSmokeNext_s0772
  | 773 => graphSmokeNext_s0773
  | 774 => graphSmokeNext_s0774
  | 775 => graphSmokeNext_s0775
  | 776 => graphSmokeNext_s0776
  | 777 => graphSmokeNext_s0777
  | 778 => graphSmokeNext_s0778
  | 779 => graphSmokeNext_s0779
  | 780 => graphSmokeNext_s0780
  | 781 => graphSmokeNext_s0781
  | 782 => graphSmokeNext_s0782
  | 783 => graphSmokeNext_s0783
  | 784 => graphSmokeNext_s0784
  | 785 => graphSmokeNext_s0785
  | 786 => graphSmokeNext_s0786
  | 787 => graphSmokeNext_s0787
  | 788 => graphSmokeNext_s0788
  | 789 => graphSmokeNext_s0789
  | 790 => graphSmokeNext_s0790
  | 791 => graphSmokeNext_s0791
  | 792 => graphSmokeNext_s0792
  | 793 => graphSmokeNext_s0793
  | 794 => graphSmokeNext_s0794
  | 795 => graphSmokeNext_s0795
  | 796 => graphSmokeNext_s0796
  | 797 => graphSmokeNext_s0797
  | 798 => graphSmokeNext_s0798
  | 799 => graphSmokeNext_s0799
  | 800 => graphSmokeNext_s0800
  | 801 => graphSmokeNext_s0801
  | 802 => graphSmokeNext_s0802
  | 803 => graphSmokeNext_s0803
  | 804 => graphSmokeNext_s0804
  | 805 => graphSmokeNext_s0805
  | 806 => graphSmokeNext_s0806
  | 807 => graphSmokeNext_s0807
  | 808 => graphSmokeNext_s0808
  | 809 => graphSmokeNext_s0809
  | 810 => graphSmokeNext_s0810
  | 811 => graphSmokeNext_s0811
  | 812 => graphSmokeNext_s0812
  | 813 => graphSmokeNext_s0813
  | 814 => graphSmokeNext_s0814
  | 815 => graphSmokeNext_s0815
  | 816 => graphSmokeNext_s0816
  | 817 => graphSmokeNext_s0817
  | 818 => graphSmokeNext_s0818
  | 819 => graphSmokeNext_s0819
  | 820 => graphSmokeNext_s0820
  | 821 => graphSmokeNext_s0821
  | 822 => graphSmokeNext_s0822
  | 823 => graphSmokeNext_s0823
  | 824 => graphSmokeNext_s0824
  | 825 => graphSmokeNext_s0825
  | 826 => graphSmokeNext_s0826
  | 827 => graphSmokeNext_s0827
  | 828 => graphSmokeNext_s0828
  | 829 => graphSmokeNext_s0829
  | 830 => graphSmokeNext_s0830
  | 831 => graphSmokeNext_s0831
  | 832 => graphSmokeNext_s0832
  | 833 => graphSmokeNext_s0833
  | 834 => graphSmokeNext_s0834
  | 835 => graphSmokeNext_s0835
  | 836 => graphSmokeNext_s0836
  | 837 => graphSmokeNext_s0837
  | 838 => graphSmokeNext_s0838
  | 839 => graphSmokeNext_s0839
  | 840 => graphSmokeNext_s0840
  | 841 => graphSmokeNext_s0841
  | 842 => graphSmokeNext_s0842
  | 843 => graphSmokeNext_s0843
  | 844 => graphSmokeNext_s0844
  | 845 => graphSmokeNext_s0845
  | 846 => graphSmokeNext_s0846
  | 847 => graphSmokeNext_s0847
  | 848 => graphSmokeNext_s0848
  | 849 => graphSmokeNext_s0849
  | 850 => graphSmokeNext_s0850
  | 851 => graphSmokeNext_s0851
  | 852 => graphSmokeNext_s0852
  | 853 => graphSmokeNext_s0853
  | 854 => graphSmokeNext_s0854
  | 855 => graphSmokeNext_s0855
  | 856 => graphSmokeNext_s0856
  | 857 => graphSmokeNext_s0857
  | 858 => graphSmokeNext_s0858
  | 859 => graphSmokeNext_s0859
  | 860 => graphSmokeNext_s0860
  | 861 => graphSmokeNext_s0861
  | 862 => graphSmokeNext_s0862
  | 863 => graphSmokeNext_s0863
  | 864 => graphSmokeNext_s0864
  | 865 => graphSmokeNext_s0865
  | 866 => graphSmokeNext_s0866
  | 867 => graphSmokeNext_s0867
  | 868 => graphSmokeNext_s0868
  | 869 => graphSmokeNext_s0869
  | 870 => graphSmokeNext_s0870
  | 871 => graphSmokeNext_s0871
  | 872 => graphSmokeNext_s0872
  | 873 => graphSmokeNext_s0873
  | 874 => graphSmokeNext_s0874
  | 875 => graphSmokeNext_s0875
  | 876 => graphSmokeNext_s0876
  | 877 => graphSmokeNext_s0877
  | 878 => graphSmokeNext_s0878
  | 879 => graphSmokeNext_s0879
  | 880 => graphSmokeNext_s0880
  | 881 => graphSmokeNext_s0881
  | 882 => graphSmokeNext_s0882
  | 883 => graphSmokeNext_s0883
  | 884 => graphSmokeNext_s0884
  | 885 => graphSmokeNext_s0885
  | 886 => graphSmokeNext_s0886
  | 887 => graphSmokeNext_s0887
  | 888 => graphSmokeNext_s0888
  | 889 => graphSmokeNext_s0889
  | 890 => graphSmokeNext_s0890
  | 891 => graphSmokeNext_s0891
  | 892 => graphSmokeNext_s0892
  | 893 => graphSmokeNext_s0893
  | 894 => graphSmokeNext_s0894
  | 895 => graphSmokeNext_s0895
  | 896 => graphSmokeNext_s0896
  | 897 => graphSmokeNext_s0897
  | 898 => graphSmokeNext_s0898
  | 899 => graphSmokeNext_s0899
  | 900 => graphSmokeNext_s0900
  | 901 => graphSmokeNext_s0901
  | 902 => graphSmokeNext_s0902
  | 903 => graphSmokeNext_s0903
  | 904 => graphSmokeNext_s0904
  | 905 => graphSmokeNext_s0905
  | 906 => graphSmokeNext_s0906
  | 907 => graphSmokeNext_s0907
  | 908 => graphSmokeNext_s0908
  | 909 => graphSmokeNext_s0909
  | 910 => graphSmokeNext_s0910
  | 911 => graphSmokeNext_s0911
  | 912 => graphSmokeNext_s0912
  | 913 => graphSmokeNext_s0913
  | 914 => graphSmokeNext_s0914
  | 915 => graphSmokeNext_s0915
  | 916 => graphSmokeNext_s0916
  | 917 => graphSmokeNext_s0917
  | 918 => graphSmokeNext_s0918
  | 919 => graphSmokeNext_s0919
  | 920 => graphSmokeNext_s0920
  | 921 => graphSmokeNext_s0921
  | 922 => graphSmokeNext_s0922
  | 923 => graphSmokeNext_s0923
  | 924 => graphSmokeNext_s0924
  | 925 => graphSmokeNext_s0925
  | 926 => graphSmokeNext_s0926
  | 927 => graphSmokeNext_s0927
  | 928 => graphSmokeNext_s0928
  | 929 => graphSmokeNext_s0929
  | 930 => graphSmokeNext_s0930
  | 931 => graphSmokeNext_s0931
  | 932 => graphSmokeNext_s0932
  | 933 => graphSmokeNext_s0933
  | 934 => graphSmokeNext_s0934
  | 935 => graphSmokeNext_s0935
  | 936 => graphSmokeNext_s0936
  | 937 => graphSmokeNext_s0937
  | 938 => graphSmokeNext_s0938
  | 939 => graphSmokeNext_s0939
  | 940 => graphSmokeNext_s0940
  | 941 => graphSmokeNext_s0941
  | 942 => graphSmokeNext_s0942
  | 943 => graphSmokeNext_s0943
  | 944 => graphSmokeNext_s0944
  | 945 => graphSmokeNext_s0945
  | 946 => graphSmokeNext_s0946
  | 947 => graphSmokeNext_s0947
  | 948 => graphSmokeNext_s0948
  | 949 => graphSmokeNext_s0949
  | 950 => graphSmokeNext_s0950
  | 951 => graphSmokeNext_s0951
  | 952 => graphSmokeNext_s0952
  | 953 => graphSmokeNext_s0953
  | 954 => graphSmokeNext_s0954
  | 955 => graphSmokeNext_s0955
  | 956 => graphSmokeNext_s0956
  | 957 => graphSmokeNext_s0957
  | 958 => graphSmokeNext_s0958
  | 959 => graphSmokeNext_s0959
  | 960 => graphSmokeNext_s0960
  | 961 => graphSmokeNext_s0961
  | 962 => graphSmokeNext_s0962
  | 963 => graphSmokeNext_s0963
  | 964 => graphSmokeNext_s0964
  | 965 => graphSmokeNext_s0965
  | 966 => graphSmokeNext_s0966
  | 967 => graphSmokeNext_s0967
  | 968 => graphSmokeNext_s0968
  | 969 => graphSmokeNext_s0969
  | _ => fun _ => none

def GraphSmokeStepEval (s : State) (label : SmokeLabel) (t : State) (gain : Int) : Prop :=
  s < stateCount /\ graphSmokeNext s label = some (t, gain)

theorem bellmanGraphEvalBase_builds : True := by
  exact True.intro

end Cuboctahedron.Generated.NonIdentity.Residual.BellmanTopPairingGraphEvalSplit10MSmoke.Base
