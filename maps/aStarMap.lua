return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "1.0.3",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 31,
  height = 31,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 62,
  properties = {},
  tilesets = {
    {
      name = "overworld",
      firstgid = 1,
      filename = "tilesets/overworld.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 1,
      margin = 0,
      image = "tilesets/roguelikeSheet_transparent.png",
      imagewidth = 968,
      imageheight = 526,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 16,
        height = 16
      },
      properties = {},
      terrains = {
        {
          name = "grass",
          tile = 5,
          properties = {}
        },
        {
          name = "water (natural)",
          tile = 60,
          properties = {}
        },
        {
          name = "water (man-made)",
          tile = 231,
          properties = {}
        },
        {
          name = "Flowers (red)",
          tile = 402,
          properties = {}
        },
        {
          name = "Flowers (white)",
          tile = 573,
          properties = {}
        },
        {
          name = "Flowers (blue)",
          tile = 744,
          properties = {}
        },
        {
          name = "Path (brown)",
          tile = 578,
          properties = {}
        }
      },
      tilecount = 1767,
      tiles = {
        {
          id = 0,
          properties = {
            ["collide"] = false
          },
          terrain = { 2, 2, 2, 2 }
        },
        {
          id = 1,
          properties = {
            ["collide"] = false
          },
          terrain = { 1, 1, 1, 1 },
          animation = {
            {
              tileid = 1,
              duration = 500
            },
            {
              tileid = 0,
              duration = 500
            }
          }
        },
        {
          id = 2,
          properties = {
            ["collide"] = true
          },
          terrain = { 0, 0, 0, 1 }
        },
        {
          id = 3,
          properties = {
            ["collide"] = true
          },
          terrain = { 0, 0, 1, 1 }
        },
        {
          id = 4,
          properties = {
            ["collide"] = true
          },
          terrain = { 0, 0, 1, 0 }
        },
        {
          id = 5,
          properties = {
            ["collide"] = false
          },
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 6,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 7,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 8,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 9,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 10,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 11,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 12,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 13,
          properties = {
            ["collide"] = false
          },
          animation = {
            {
              tileid = 13,
              duration = 150
            },
            {
              tileid = 14,
              duration = 150
            }
          }
        },
        {
          id = 14,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 15,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 16,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 17,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 18,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 19,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 20,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 21,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 22,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 23,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 24,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 25,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 26,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 27,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 28,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 29,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 30,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 31,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 32,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 33,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 34,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 35,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 36,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 37,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 38,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 39,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 40,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 41,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 42,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 43,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 44,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 45,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 46,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 47,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 48,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 49,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 50,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 51,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 52,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 53,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 54,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 55,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 56,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 57,
          properties = {
            ["collide"] = false
          },
          terrain = { 1, 1, 1, 0 }
        },
        {
          id = 58,
          properties = {
            ["collide"] = false
          },
          terrain = { 1, 1, 0, 1 }
        },
        {
          id = 59,
          properties = {
            ["collide"] = true
          },
          terrain = { 0, 1, 0, 1 }
        },
        {
          id = 60,
          properties = {
            ["collide"] = false
          },
          terrain = { 1, 1, 1, 1 },
          animation = {
            {
              tileid = 60,
              duration = 500
            },
            {
              tileid = 1,
              duration = 500
            }
          }
        },
        {
          id = 61,
          properties = {
            ["collide"] = true
          },
          terrain = { 1, 0, 1, 0 }
        },
        {
          id = 62,
          properties = {
            ["collide"] = false
          },
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 63,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 64,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 65,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 66,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 67,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 68,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 69,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 70,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 71,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 72,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 73,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 74,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 75,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 76,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 77,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 78,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 79,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 80,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 81,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 82,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 83,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 84,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 85,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 86,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 87,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 88,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 89,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 90,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 91,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 92,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 93,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 94,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 95,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 96,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 97,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 98,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 99,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 100,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 101,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 102,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 103,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 104,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 105,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 106,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 107,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 108,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 109,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 110,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 111,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 112,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 113,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 114,
          properties = {
            ["collide"] = false
          },
          terrain = { 1, 0, 1, 1 }
        },
        {
          id = 115,
          properties = {
            ["collide"] = false
          },
          terrain = { 0, 1, 1, 1 }
        },
        {
          id = 116,
          properties = {
            ["collide"] = true
          },
          terrain = { 0, 1, 0, 0 }
        },
        {
          id = 117,
          properties = {
            ["collide"] = true
          },
          terrain = { 1, 1, 0, 0 }
        },
        {
          id = 118,
          properties = {
            ["collide"] = true
          },
          terrain = { 1, 0, 0, 0 }
        },
        {
          id = 119,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 120,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 121,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 122,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 123,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 124,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 125,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 126,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 127,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 128,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 129,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 130,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 131,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 132,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 133,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 134,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 135,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 136,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 137,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 138,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 139,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 140,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 141,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 142,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 143,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 144,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 145,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 146,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 147,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 148,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 149,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 150,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 151,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 152,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 153,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 154,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 155,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 156,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 157,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 158,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 159,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 160,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 161,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 162,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 163,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 164,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 165,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 166,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 167,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 168,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 169,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 170,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 171,
          properties = {
            ["collide"] = false
          },
          terrain = { 2, 2, 2, -1 }
        },
        {
          id = 172,
          properties = {
            ["collide"] = false
          },
          terrain = { 2, 2, -1, 2 }
        },
        {
          id = 173,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, -1, -1, 2 }
        },
        {
          id = 174,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, -1, 2, 2 }
        },
        {
          id = 175,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, -1, 2, -1 }
        },
        {
          id = 176,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 177,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 178,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 179,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 180,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 181,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 182,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 183,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 184,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 185,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 186,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 187,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 188,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 189,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 190,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 191,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 192,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 193,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 194,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 195,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 196,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 197,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 198,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 199,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 200,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 201,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 202,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 203,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 204,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 205,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 206,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 207,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 208,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 209,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 210,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 211,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 212,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 213,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 214,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 215,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 216,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 217,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 218,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 219,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 220,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 221,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 222,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 223,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 224,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 225,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 226,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 227,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 228,
          properties = {
            ["collide"] = false
          },
          terrain = { 2, -1, 2, 2 }
        },
        {
          id = 229,
          properties = {
            ["collide"] = false
          },
          terrain = { -1, 2, 2, 2 }
        },
        {
          id = 230,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, 2, -1, 2 }
        },
        {
          id = 231,
          properties = {
            ["collide"] = false
          },
          terrain = { 2, 2, 2, 2 },
          animation = {
            {
              tileid = 231,
              duration = 500
            },
            {
              tileid = 1,
              duration = 500
            }
          }
        },
        {
          id = 232,
          properties = {
            ["collide"] = true
          },
          terrain = { 2, -1, 2, -1 }
        },
        {
          id = 233,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 234,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 235,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 236,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 237,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 238,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 239,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 240,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 241,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 242,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 243,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 244,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 245,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 246,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 247,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 248,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 249,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 250,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 251,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 252,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 253,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 254,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 255,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 256,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 257,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 258,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 259,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 260,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 261,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 262,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 263,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 264,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 265,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 266,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 267,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 268,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 269,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 270,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 271,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 272,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 273,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 274,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 275,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 276,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 277,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 278,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 279,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 280,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 281,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 282,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 283,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 284,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 285,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 286,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 287,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, 2, -1, -1 }
        },
        {
          id = 288,
          properties = {
            ["collide"] = true
          },
          terrain = { 2, 2, -1, -1 }
        },
        {
          id = 289,
          properties = {
            ["collide"] = true
          },
          terrain = { 2, -1, -1, -1 }
        },
        {
          id = 290,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 291,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 292,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 293,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 294,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 295,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 296,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 297,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 298,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 299,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 300,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 301,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 302,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 303,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 304,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 305,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 306,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 307,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 308,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 309,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 310,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 311,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 312,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 313,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 314,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 315,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 316,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 317,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 318,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 319,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 320,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 321,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 322,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 323,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 324,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 325,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 326,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 327,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 328,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 329,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 330,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 331,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 332,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 333,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 334,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 335,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 336,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 337,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 338,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 339,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 340,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 341,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 342,
          properties = {
            ["collide"] = false
          },
          terrain = { 3, 3, 3, -1 }
        },
        {
          id = 343,
          properties = {
            ["collide"] = false
          },
          terrain = { 3, 3, -1, 3 }
        },
        {
          id = 344,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, -1, -1, 3 }
        },
        {
          id = 345,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, -1, 3, 3 }
        },
        {
          id = 346,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, -1, 3, -1 }
        },
        {
          id = 347,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 348,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 349,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 350,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 351,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 352,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 353,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 354,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 355,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 356,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 357,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 358,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 359,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 360,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 361,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 362,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 363,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 364,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 365,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 366,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 367,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 368,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 369,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 370,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 371,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 372,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 373,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 374,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 375,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 376,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 377,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 378,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 379,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 380,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 381,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 382,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 383,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 384,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 385,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 386,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 387,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 388,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 389,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 390,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 391,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 392,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 393,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 394,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 395,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 396,
          properties = {
            ["collide"] = false
          },
          animation = {
            {
              tileid = 396,
              duration = 100
            },
            {
              tileid = 397,
              duration = 100
            }
          }
        },
        {
          id = 397,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 398,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 399,
          properties = {
            ["collide"] = false
          },
          terrain = { 3, -1, 3, 3 }
        },
        {
          id = 400,
          properties = {
            ["collide"] = false
          },
          terrain = { -1, 3, 3, 3 }
        },
        {
          id = 401,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, 3, -1, 3 }
        },
        {
          id = 402,
          properties = {
            ["collide"] = false
          },
          terrain = { 3, 3, 3, 3 }
        },
        {
          id = 403,
          properties = {
            ["collide"] = true
          },
          terrain = { 3, -1, 3, -1 }
        },
        {
          id = 404,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 405,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 406,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 407,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 408,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 409,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 410,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 411,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 412,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 413,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 414,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 415,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 416,
          properties = {
            ["collide"] = false
          },
          animation = {
            {
              tileid = 416,
              duration = 100
            },
            {
              tileid = 417,
              duration = 100
            }
          }
        },
        {
          id = 417,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 418,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 419,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 420,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 421,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 422,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 423,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 424,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 425,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 426,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 427,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 428,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 429,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 430,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 431,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 432,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 433,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 434,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 435,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 436,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 437,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 438,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 439,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 440,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 441,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 442,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 443,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 444,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 445,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 446,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 447,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 448,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 449,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 450,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 451,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 452,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 453,
          properties = {
            ["collide"] = false
          },
          animation = {
            {
              tileid = 453,
              duration = 100
            },
            {
              tileid = 454,
              duration = 100
            }
          }
        },
        {
          id = 454,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 455,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 456,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 457,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 458,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, 3, -1, -1 }
        },
        {
          id = 459,
          properties = {
            ["collide"] = true
          },
          terrain = { 3, 3, -1, -1 }
        },
        {
          id = 460,
          properties = {
            ["collide"] = true
          },
          terrain = { 3, -1, -1, -1 }
        },
        {
          id = 461,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 462,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 463,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 464,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 465,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 466,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 467,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 468,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 469,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 470,
          properties = {
            ["collide"] = false
          },
          animation = {
            {
              tileid = 470,
              duration = 100
            },
            {
              tileid = 471,
              duration = 100
            }
          }
        },
        {
          id = 471,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 472,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 473,
          properties = {
            ["collide"] = false
          },
          animation = {
            {
              tileid = 473,
              duration = 100
            },
            {
              tileid = 474,
              duration = 100
            }
          }
        },
        {
          id = 474,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 475,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 476,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 477,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 478,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 479,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 480,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 481,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 482,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 483,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 484,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 485,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 486,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 487,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 488,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 489,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 490,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 491,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 492,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 493,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 494,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 495,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 496,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 497,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 498,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 499,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 500,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 501,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 502,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 503,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 504,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 505,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 506,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 507,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 508,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 509,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 510,
          properties = {
            ["collide"] = false
          },
          animation = {
            {
              tileid = 510,
              duration = 100
            },
            {
              tileid = 511,
              duration = 100
            }
          }
        },
        {
          id = 511,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 512,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 513,
          properties = {
            ["collide"] = false
          },
          terrain = { 4, 4, 4, -1 }
        },
        {
          id = 514,
          properties = {
            ["collide"] = false
          },
          terrain = { 4, 4, -1, 4 }
        },
        {
          id = 515,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, -1, -1, 4 }
        },
        {
          id = 516,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, -1, 4, 4 }
        },
        {
          id = 517,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, -1, 4, -1 }
        },
        {
          id = 518,
          properties = {
            ["collide"] = false
          },
          terrain = { 6, 6, 6, -1 }
        },
        {
          id = 519,
          properties = {
            ["collide"] = false
          },
          terrain = { 6, 6, -1, 6 }
        },
        {
          id = 520,
          properties = {
            ["collide"] = false
          },
          terrain = { -1, -1, -1, 6 }
        },
        {
          id = 521,
          properties = {
            ["collide"] = false
          },
          terrain = { -1, -1, 6, 6 }
        },
        {
          id = 522,
          properties = {
            ["collide"] = false
          },
          terrain = { -1, -1, 6, -1 }
        },
        {
          id = 523,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 524,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 525,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 526,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 527,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 528,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 529,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 530,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 531,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 532,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 533,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 534,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 535,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 536,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 537,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 538,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 539,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 540,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 541,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 542,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 543,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 544,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 545,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 546,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 547,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 548,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 549,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 550,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 551,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 552,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 553,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 554,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 555,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 556,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 557,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 558,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 559,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 560,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 561,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 562,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 563,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 564,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 565,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 566,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 567,
          properties = {
            ["collide"] = false
          },
          animation = {
            {
              tileid = 567,
              duration = 100
            },
            {
              tileid = 568,
              duration = 100
            }
          }
        },
        {
          id = 568,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 569,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 570,
          properties = {
            ["collide"] = false
          },
          terrain = { 4, -1, 4, 4 }
        },
        {
          id = 571,
          properties = {
            ["collide"] = false
          },
          terrain = { -1, 4, 4, 4 }
        },
        {
          id = 572,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, 4, -1, 4 }
        },
        {
          id = 573,
          properties = {
            ["collide"] = false
          },
          terrain = { 4, 4, 4, 4 }
        },
        {
          id = 574,
          properties = {
            ["collide"] = true
          },
          terrain = { 4, -1, 4, -1 }
        },
        {
          id = 575,
          properties = {
            ["collide"] = false
          },
          terrain = { 6, -1, 6, 6 }
        },
        {
          id = 576,
          properties = {
            ["collide"] = false
          },
          terrain = { -1, 6, 6, 6 }
        },
        {
          id = 577,
          properties = {
            ["collide"] = false
          },
          terrain = { -1, 6, -1, 6 }
        },
        {
          id = 578,
          properties = {
            ["collide"] = false
          },
          terrain = { 6, 6, 6, 6 }
        },
        {
          id = 579,
          properties = {
            ["collide"] = false
          },
          terrain = { 6, -1, 6, -1 }
        },
        {
          id = 580,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 581,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 582,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 583,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 584,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 585,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 586,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 587,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 588,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 589,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 590,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 591,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 592,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 593,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 594,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 595,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 596,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 597,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 598,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 599,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 600,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 601,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 602,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 603,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 604,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 605,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 606,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 607,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 608,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 609,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 610,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 611,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 612,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 613,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 614,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 615,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 616,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 617,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 618,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 619,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 620,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 621,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 622,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 623,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 624,
          properties = {
            ["collide"] = false
          },
          animation = {
            {
              tileid = 624,
              duration = 100
            },
            {
              tileid = 625,
              duration = 100
            }
          }
        },
        {
          id = 625,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 626,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 627,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 628,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 629,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, 4, -1, -1 }
        },
        {
          id = 630,
          properties = {
            ["collide"] = true
          },
          terrain = { 4, 4, -1, -1 }
        },
        {
          id = 631,
          properties = {
            ["collide"] = true
          },
          terrain = { 4, -1, -1, -1 }
        },
        {
          id = 632,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 633,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 634,
          properties = {
            ["collide"] = false
          },
          terrain = { -1, 6, -1, -1 }
        },
        {
          id = 635,
          properties = {
            ["collide"] = false
          },
          terrain = { 6, 6, -1, -1 }
        },
        {
          id = 636,
          properties = {
            ["collide"] = false
          },
          terrain = { 6, -1, -1, -1 }
        },
        {
          id = 637,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 638,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 639,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 640,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 641,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 642,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 643,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 644,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 645,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 646,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 647,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 648,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 649,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 650,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 651,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 652,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 653,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 654,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 655,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 656,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 657,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 658,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 659,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 660,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 661,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 662,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 663,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 664,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 665,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 666,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 667,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 668,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 669,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 670,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 671,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 672,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 673,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 674,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 675,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 676,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 677,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 678,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 679,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 680,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 681,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 682,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 683,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 684,
          properties = {
            ["collide"] = false
          },
          terrain = { 5, 5, 5, -1 }
        },
        {
          id = 685,
          properties = {
            ["collide"] = false
          },
          terrain = { 5, 5, -1, 5 }
        },
        {
          id = 686,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, -1, -1, 5 }
        },
        {
          id = 687,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, -1, 5, 5 }
        },
        {
          id = 688,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, -1, 5, -1 }
        },
        {
          id = 689,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 690,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 691,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 692,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 693,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 694,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 695,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 696,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 697,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 698,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 699,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 700,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 701,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 702,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 703,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 704,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 705,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 706,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 707,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 708,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 709,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 710,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 711,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 712,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 713,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 714,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 715,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 716,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 717,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 718,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 719,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 720,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 721,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 722,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 723,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 724,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 725,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 726,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 727,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 728,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 729,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 730,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 731,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 732,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 733,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 734,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 735,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 736,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 737,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 738,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 739,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 740,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 741,
          properties = {
            ["collide"] = false
          },
          terrain = { 5, -1, 5, 5 }
        },
        {
          id = 742,
          properties = {
            ["collide"] = false
          },
          terrain = { -1, 5, 5, 5 }
        },
        {
          id = 743,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, 5, -1, 5 }
        },
        {
          id = 744,
          properties = {
            ["collide"] = false
          },
          terrain = { 5, 5, 5, 5 }
        },
        {
          id = 745,
          properties = {
            ["collide"] = true
          },
          terrain = { 5, -1, 5, -1 }
        },
        {
          id = 746,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 747,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 748,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 749,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 750,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 751,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 752,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 753,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 754,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 755,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 756,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 757,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 758,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 759,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 760,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 761,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 762,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 763,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 764,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 765,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 766,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 767,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 768,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 769,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 770,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 771,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 772,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 773,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 774,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 775,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 776,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 777,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 778,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 779,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 780,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 781,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 782,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 783,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 784,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 785,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 786,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 787,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 788,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 789,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 790,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 791,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 792,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 793,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 794,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 795,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 796,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 797,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 798,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 799,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 800,
          properties = {
            ["collide"] = true
          },
          terrain = { -1, 5, -1, -1 }
        },
        {
          id = 801,
          properties = {
            ["collide"] = true
          },
          terrain = { 5, 5, -1, -1 }
        },
        {
          id = 802,
          properties = {
            ["collide"] = true
          },
          terrain = { 5, -1, -1, -1 }
        },
        {
          id = 803,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 804,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 805,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 806,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 807,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 808,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 809,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 810,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 811,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 812,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 813,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 814,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 815,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 816,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 817,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 818,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 819,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 820,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 821,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 822,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 823,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 824,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 825,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 826,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 827,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 828,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 829,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 830,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 831,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 832,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 833,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 834,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 835,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 836,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 837,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 838,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 839,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 840,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 841,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 842,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 843,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 844,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 845,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 846,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 847,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 848,
          properties = {
            ["collide"] = true
          }
        },
        {
          id = 849,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 850,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 851,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 852,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 853,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 854,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 855,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 856,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 857,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 858,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 859,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 860,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 861,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 862,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 863,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 864,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 865,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 866,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 867,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 868,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 869,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 870,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 871,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 872,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 873,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 874,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 875,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 876,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 877,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 878,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 879,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 880,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 881,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 882,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 883,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 884,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 885,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 886,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 887,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 888,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 889,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 890,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 891,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 892,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 893,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 894,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 895,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 896,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 897,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 898,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 899,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 900,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 901,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 902,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 903,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 904,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 905,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 906,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 907,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 908,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 909,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 910,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 911,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 912,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 913,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 914,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 915,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 916,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 917,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 918,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 919,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 920,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 921,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 922,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 923,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 924,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 925,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 926,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 927,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 928,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 929,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 930,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 931,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 932,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 933,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 934,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 935,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 936,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 937,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 938,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 939,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 940,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 941,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 942,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 943,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 944,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 945,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 946,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 947,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 948,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 949,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 950,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 951,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 952,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 953,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 954,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 955,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 956,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 957,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 958,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 959,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 960,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 961,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 962,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 963,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 964,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 965,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 966,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 967,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 968,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 969,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 970,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 971,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 972,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 973,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 974,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 975,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 976,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 977,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 978,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 979,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 980,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 981,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 982,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 983,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 984,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 985,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 986,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 987,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 988,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 989,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 990,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 991,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 992,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 993,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 994,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 995,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 996,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 997,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 998,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 999,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1000,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1001,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1002,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1003,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1004,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1005,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1006,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1007,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1008,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1009,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1010,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1011,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1012,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1013,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1014,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1015,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1016,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1017,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1018,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1019,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1020,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1021,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1022,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1023,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1024,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1025,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1026,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1027,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1028,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1029,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1030,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1031,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1032,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1033,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1034,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1035,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1036,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1037,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1038,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1039,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1040,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1041,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1042,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1043,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1044,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1045,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1046,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1047,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1048,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1049,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1050,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1051,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1052,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1053,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1054,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1055,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1056,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1057,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1058,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1059,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1060,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1061,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1062,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1063,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1064,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1065,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1066,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1067,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1068,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1069,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1070,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1071,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1072,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1073,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1074,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1075,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1076,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1077,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1078,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1079,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1080,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1081,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1082,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1083,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1084,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1085,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1086,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1087,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1088,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1089,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1090,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1091,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1092,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1093,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1094,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1095,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1096,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1097,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1098,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1099,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1100,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1101,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1102,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1103,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1104,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1105,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1106,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1107,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1108,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1109,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1110,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1111,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1112,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1113,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1114,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1115,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1116,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1117,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1118,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1119,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1120,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1121,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1122,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1123,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1124,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1125,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1126,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1127,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1128,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1129,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1130,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1131,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1132,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1133,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1134,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1135,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1136,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1137,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1138,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1139,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1140,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1141,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1142,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1143,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1144,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1145,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1146,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1147,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1148,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1149,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1150,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1151,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1152,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1153,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1154,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1155,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1156,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1157,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1158,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1159,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1160,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1161,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1162,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1163,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1164,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1165,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1166,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1167,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1168,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1169,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1170,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1171,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1172,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1173,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1174,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1175,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1176,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1177,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1178,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1179,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1180,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1181,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1182,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1183,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1184,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1185,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1186,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1187,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1188,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1189,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1190,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1191,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1192,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1193,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1194,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1195,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1196,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1197,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1198,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1199,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1200,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1201,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1202,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1203,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1204,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1205,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1206,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1207,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1208,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1209,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1210,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1211,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1212,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1213,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1214,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1215,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1216,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1217,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1218,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1219,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1220,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1221,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1222,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1223,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1224,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1225,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1226,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1227,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1228,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1229,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1230,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1231,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1232,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1233,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1234,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1235,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1236,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1237,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1238,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1239,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1240,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1241,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1242,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1243,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1244,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1245,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1246,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1247,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1248,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1249,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1250,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1251,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1252,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1253,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1254,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1255,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1256,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1257,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1258,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1259,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1260,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1261,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1262,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1263,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1264,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1265,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1266,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1267,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1268,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1269,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1270,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1271,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1272,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1273,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1274,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1275,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1276,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1277,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1278,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1279,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1280,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1281,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1282,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1283,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1284,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1285,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1286,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1287,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1288,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1289,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1290,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1291,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1292,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1293,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1294,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1295,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1296,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1297,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1298,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1299,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1300,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1301,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1302,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1303,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1304,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1305,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1306,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1307,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1308,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1309,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1310,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1311,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1312,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1313,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1314,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1315,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1316,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1317,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1318,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1319,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1320,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1321,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1322,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1323,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1324,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1325,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1326,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1327,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1328,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1329,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1330,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1331,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1332,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1333,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1334,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1335,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1336,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1337,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1338,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1339,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1340,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1341,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1342,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1343,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1344,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1345,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1346,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1347,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1348,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1349,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1350,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1351,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1352,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1353,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1354,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1355,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1356,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1357,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1358,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1359,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1360,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1361,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1362,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1363,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1364,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1365,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1366,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1367,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1368,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1369,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1370,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1371,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1372,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1373,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1374,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1375,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1376,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1377,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1378,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1379,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1380,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1381,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1382,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1383,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1384,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1385,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1386,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1387,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1388,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1389,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1390,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1391,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1392,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1393,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1394,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1395,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1396,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1397,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1398,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1399,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1400,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1401,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1402,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1403,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1404,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1405,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1406,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1407,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1408,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1409,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1410,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1411,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1412,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1413,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1414,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1415,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1416,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1417,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1418,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1419,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1420,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1421,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1422,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1423,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1424,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1425,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1426,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1427,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1428,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1429,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1430,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1431,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1432,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1433,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1434,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1435,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1436,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1437,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1438,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1439,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1440,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1441,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1442,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1443,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1444,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1445,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1446,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1447,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1448,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1449,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1450,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1451,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1452,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1453,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1454,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1455,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1456,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1457,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1458,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1459,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1460,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1461,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1462,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1463,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1464,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1465,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1466,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1467,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1468,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1469,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1470,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1471,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1472,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1473,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1474,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1475,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1476,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1477,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1478,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1479,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1480,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1481,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1482,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1483,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1484,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1485,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1486,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1487,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1488,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1489,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1490,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1491,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1492,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1493,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1494,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1495,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1496,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1497,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1498,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1499,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1500,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1501,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1502,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1503,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1504,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1505,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1506,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1507,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1508,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1509,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1510,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1511,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1512,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1513,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1514,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1515,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1516,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1517,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1518,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1519,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1520,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1521,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1522,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1523,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1524,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1525,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1526,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1527,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1528,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1529,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1530,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1531,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1532,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1533,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1534,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1535,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1536,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1537,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1538,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1539,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1540,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1541,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1542,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1543,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1544,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1545,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1546,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1547,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1548,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1549,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1550,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1551,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1552,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1553,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1554,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1555,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1556,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1557,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1558,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1559,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1560,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1561,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1562,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1563,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1564,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1565,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1566,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1567,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1568,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1569,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1570,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1571,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1572,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1573,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1574,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1575,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1576,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1577,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1578,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1579,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1580,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1581,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1582,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1583,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1584,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1585,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1586,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1587,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1588,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1589,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1590,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1591,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1592,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1593,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1594,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1595,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1596,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1597,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1598,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1599,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1600,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1601,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1602,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1603,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1604,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1605,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1606,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1607,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1608,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1609,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1610,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1611,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1612,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1613,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1614,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1615,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1616,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1617,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1618,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1619,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1620,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1621,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1622,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1623,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1624,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1625,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1626,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1627,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1628,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1629,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1630,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1631,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1632,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1633,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1634,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1635,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1636,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1637,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1638,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1639,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1640,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1641,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1642,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1643,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1644,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1645,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1646,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1647,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1648,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1649,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1650,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1651,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1652,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1653,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1654,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1655,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1656,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1657,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1658,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1659,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1660,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1661,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1662,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1663,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1664,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1665,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1666,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1667,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1668,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1669,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1670,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1671,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1672,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1673,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1674,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1675,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1676,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1677,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1678,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1679,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1680,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1681,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1682,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1683,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1684,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1685,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1686,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1687,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1688,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1689,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1690,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1691,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1692,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1693,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1694,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1695,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1696,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1697,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1698,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1699,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1700,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1701,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1702,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1703,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1704,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1705,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1706,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1707,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1708,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1709,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1710,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1711,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1712,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1713,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1714,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1715,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1716,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1717,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1718,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1719,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1720,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1721,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1722,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1723,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1724,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1725,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1726,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1727,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1728,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1729,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1730,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1731,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1732,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1733,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1734,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1735,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1736,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1737,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1738,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1739,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1740,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1741,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1742,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1743,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1744,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1745,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1746,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1747,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1748,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1749,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1750,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1751,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1752,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1753,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1754,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1755,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1756,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1757,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1758,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1759,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1760,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1761,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1762,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1763,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1764,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1765,
          properties = {
            ["collide"] = false
          }
        },
        {
          id = 1766,
          properties = {
            ["collide"] = false
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 31,
      height = 31,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 639, 639, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 639, 639, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 810, 810, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 810, 810, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63,
        63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63, 63
      }
    },
    {
      type = "tilelayer",
      name = "walls",
      x = 0,
      y = 0,
      width = 31,
      height = 31,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169,
        1169, 0, 0, 1169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1169, 0, 0, 1169,
        1169, 0, 0, 1169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1169, 0, 0, 1169,
        1169, 0, 0, 1169, 0, 0, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169,
        1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 0, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169,
        1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 0, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169,
        1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169, 1169, 1169, 1169, 0, 0, 1169, 0, 0, 1169, 1169, 1169, 1169, 0, 0, 1169, 0, 0, 1169,
        1169, 0, 0, 0, 0, 0, 1169, 0, 0, 1169, 0, 0, 0, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169,
        1169, 0, 0, 0, 0, 0, 1169, 0, 0, 1169, 0, 0, 0, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169,
        1169, 1169, 1169, 1169, 0, 0, 1169, 0, 0, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 0, 0, 1169, 0, 0, 1169, 1169, 1169, 1169, 0, 0, 1169, 0, 0, 1169,
        1169, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 0, 0, 0, 1169, 0, 0, 1169, 0, 0, 0, 0, 0, 0, 0, 0, 1169, 0, 0, 1169,
        1169, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 0, 0, 0, 1169, 0, 0, 1169, 0, 0, 0, 0, 0, 0, 0, 0, 1169, 0, 0, 1169,
        1169, 0, 0, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 0, 0, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 0, 0, 1169,
        1169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1169,
        1169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1169,
        1169, 0, 0, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 0, 0, 1169, 1169, 1169, 1169, 0, 0, 1169, 1169, 1169, 1169, 1169, 1169, 1169,
        1169, 0, 0, 0, 0, 0, 1169, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 1169,
        1169, 0, 0, 0, 0, 0, 1169, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 1169,
        1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169, 1169, 1169, 1169, 0, 0, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 0, 0, 1169, 0, 0, 1169,
        1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 0, 0, 0, 1169,
        1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 0, 0, 0, 1169,
        1169, 1169, 1169, 1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169, 1169, 1169, 1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169, 1169, 1169, 1169, 0, 0, 1169,
        1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 1169,
        1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 1169,
        1169, 0, 0, 1169, 0, 0, 1169, 1169, 1169, 1169, 0, 0, 1169, 0, 0, 1169, 1169, 1169, 1169, 0, 0, 1169, 0, 0, 1169, 1169, 1169, 1169, 0, 0, 1169,
        1169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1169,
        1169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1169,
        1169, 1169, 1169, 1169, 0, 0, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 0, 0, 1169, 0, 0, 1169, 1169, 1169, 1169, 0, 0, 1169, 1169, 1169, 1169, 1169, 1169, 1169,
        1169, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1169,
        1169, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 0, 0, 0, 1169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1169,
        1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169, 1169
      }
    },
    {
      type = "objectgroup",
      name = "Object Layer 1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 1,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 16,
          height = 496,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 480,
          y = 0,
          width = 16,
          height = 496,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 0,
          y = 0,
          width = 480,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 0,
          y = 480,
          width = 480,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 48,
          y = 16,
          width = 16,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 16,
          y = 144,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 48,
          y = 288,
          width = 16,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 16,
          y = 336,
          width = 32,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 16,
          y = 432,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 384,
          y = 48,
          width = 16,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 336,
          y = 144,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 336,
          y = 64,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 17,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 352,
          y = 96,
          width = 32,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 96,
          y = 48,
          width = 16,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 20,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 112,
          y = 48,
          width = 240,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 21,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 48,
          y = 192,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 22,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 112,
          y = 192,
          width = 96,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 144,
          y = 96,
          width = 16,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 24,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 160,
          y = 144,
          width = 96,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 25,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 240,
          y = 64,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 192,
          y = 96,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 27,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 239.667,
          y = 160.667,
          width = 16,
          height = 47,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 255.667,
          y = 191.667,
          width = 192,
          height = 15.6667,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 29,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 432,
          y = 16.3333,
          width = 15.6667,
          height = 175,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 30,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 288,
          y = 96,
          width = 16,
          height = 96,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 31,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 288,
          y = 208,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 32,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 192,
          y = 208,
          width = 16,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 33,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 48,
          y = 240,
          width = 208,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 34,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 96,
          y = 256,
          width = 16,
          height = 144,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 35,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 144,
          y = 256,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 36,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 240,
          y = 256,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 37,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 192,
          y = 288,
          width = 16,
          height = 160,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 38,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 112,
          y = 384,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 39,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 144,
          y = 336,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 40,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 208,
          y = 336,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 41,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 96,
          y = 432,
          width = 96,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 42,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 96,
          y = 448,
          width = 16,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 43,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 304,
          y = 240,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 44,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 384,
          y = 240,
          width = 96,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 45,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 432,
          y = 256,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 46,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 336,
          y = 256,
          width = 16,
          height = 142,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 47,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 288,
          y = 288,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 48,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 352,
          y = 288,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 49,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 288,
          y = 304,
          width = 16,
          height = 142,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 50,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 240,
          y = 384,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 51,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 304,
          y = 432,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 52,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 384,
          y = 304,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 53,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 400,
          y = 336,
          width = 48,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 54,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 239.875,
          y = 432,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 55,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 432,
          y = 352.25,
          width = 15.75,
          height = 47.5,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 56,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 384,
          y = 383.75,
          width = 47.75,
          height = 15.75,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 57,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 383.75,
          y = 432,
          width = 96.5,
          height = 15.75,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 58,
          name = "wall",
          type = "wall",
          shape = "rectangle",
          x = 208,
          y = 288,
          width = 32,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 60,
          name = "slime",
          type = "slime",
          shape = "rectangle",
          x = 31,
          y = 463,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 61,
          name = "player",
          type = "spawn",
          shape = "rectangle",
          x = 464,
          y = 31,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
