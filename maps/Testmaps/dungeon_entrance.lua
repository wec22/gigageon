return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "1.0.3",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 32,
  height = 32,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 89,
  properties = {},
  tilesets = {
    {
      name = "Dungeon",
      firstgid = 1,
      filename = "../../tilesets/dungeon.tsx",
      tilewidth = 16,
      tileheight = 16,
      spacing = 1,
      margin = 0,
      image = "tilesets/roguelikeDungeon_transparent.png",
      imagewidth = 492,
      imageheight = 305,
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
          name = "Water",
          tile = 320,
          properties = {}
        },
        {
          name = "Water (green)",
          tile = 325,
          properties = {}
        },
        {
          name = "Waterfall",
          tile = 436,
          properties = {}
        }
      },
      tilecount = 522,
      tiles = {
        {
          id = 290,
          terrain = { -1, -1, -1, 0 }
        },
        {
          id = 291,
          terrain = { -1, -1, 0, 0 }
        },
        {
          id = 292,
          terrain = { -1, -1, 0, -1 }
        },
        {
          id = 293,
          terrain = { 0, 0, 0, -1 },
          animation = {
            {
              tileid = 293,
              duration = 500
            },
            {
              tileid = 351,
              duration = 500
            }
          }
        },
        {
          id = 294,
          terrain = { 0, 0, -1, 0 },
          animation = {
            {
              tileid = 294,
              duration = 500
            },
            {
              tileid = 352,
              duration = 500
            }
          }
        },
        {
          id = 295,
          terrain = { -1, -1, -1, 1 }
        },
        {
          id = 296,
          terrain = { -1, -1, 1, 1 }
        },
        {
          id = 297,
          terrain = { -1, -1, 1, -1 }
        },
        {
          id = 298,
          terrain = { -1, -1, -1, 1 }
        },
        {
          id = 299,
          terrain = { -1, -1, 1, -1 }
        },
        {
          id = 319,
          terrain = { -1, 0, -1, 0 }
        },
        {
          id = 320,
          terrain = { 0, 0, 0, 0 }
        },
        {
          id = 321,
          terrain = { 0, -1, 0, -1 }
        },
        {
          id = 322,
          terrain = { 0, -1, 0, 0 },
          animation = {
            {
              tileid = 322,
              duration = 500
            },
            {
              tileid = 380,
              duration = 500
            }
          }
        },
        {
          id = 323,
          terrain = { -1, 0, 0, 0 },
          animation = {
            {
              tileid = 323,
              duration = 500
            },
            {
              tileid = 381,
              duration = 500
            }
          }
        },
        {
          id = 324,
          terrain = { -1, 1, -1, 1 }
        },
        {
          id = 325,
          terrain = { 1, 1, 1, 1 }
        },
        {
          id = 326,
          terrain = { 1, -1, 1, -1 }
        },
        {
          id = 327,
          terrain = { -1, 1, -1, -1 }
        },
        {
          id = 328,
          terrain = { 1, -1, -1, -1 }
        },
        {
          id = 348,
          terrain = { -1, 0, -1, -1 },
          animation = {
            {
              tileid = 348,
              duration = 500
            },
            {
              tileid = 377,
              duration = 500
            }
          }
        },
        {
          id = 349,
          terrain = { 0, 0, -1, -1 },
          animation = {
            {
              tileid = 349,
              duration = 500
            },
            {
              tileid = 378,
              duration = 500
            }
          }
        },
        {
          id = 350,
          terrain = { 0, -1, -1, -1 },
          animation = {
            {
              tileid = 350,
              duration = 500
            },
            {
              tileid = 379,
              duration = 500
            }
          }
        },
        {
          id = 351,
          animation = {
            {
              tileid = 351,
              duration = 500
            },
            {
              tileid = 293,
              duration = 500
            }
          }
        },
        {
          id = 352,
          animation = {
            {
              tileid = 352,
              duration = 500
            },
            {
              tileid = 294,
              duration = 500
            }
          }
        },
        {
          id = 353,
          terrain = { -1, 1, -1, -1 }
        },
        {
          id = 354,
          terrain = { 1, 1, -1, -1 }
        },
        {
          id = 355,
          terrain = { 1, -1, -1, -1 }
        },
        {
          id = 377,
          animation = {
            {
              tileid = 377,
              duration = 500
            },
            {
              tileid = 348,
              duration = 500
            }
          }
        },
        {
          id = 378,
          animation = {
            {
              tileid = 378,
              duration = 500
            },
            {
              tileid = 349,
              duration = 500
            }
          }
        },
        {
          id = 379,
          animation = {
            {
              tileid = 379,
              duration = 500
            },
            {
              tileid = 350,
              duration = 500
            }
          }
        },
        {
          id = 380,
          animation = {
            {
              tileid = 380,
              duration = 500
            },
            {
              tileid = 322,
              duration = 500
            }
          }
        },
        {
          id = 381,
          animation = {
            {
              tileid = 381,
              duration = 500
            },
            {
              tileid = 323,
              duration = 500
            }
          }
        },
        {
          id = 406,
          terrain = { -1, 0, -1, 2 }
        },
        {
          id = 407,
          terrain = { -1, -1, -1, 2 }
        },
        {
          id = 408,
          terrain = { 0, 0, 2, 2 }
        },
        {
          id = 409,
          terrain = { -1, -1, 2, -1 }
        },
        {
          id = 410,
          terrain = { 0, -1, 2, -1 }
        },
        {
          id = 411,
          terrain = { -1, 1, -1, -1 }
        },
        {
          id = 413,
          terrain = { 1, 1, -1, -1 }
        },
        {
          id = 415,
          terrain = { 1, -1, -1, -1 }
        },
        {
          id = 435,
          terrain = { -1, 2, -1, 2 }
        },
        {
          id = 436,
          terrain = { 2, 2, 2, 2 }
        },
        {
          id = 437,
          terrain = { 2, -1, 2, -1 }
        },
        {
          id = 464,
          terrain = { -1, 2, -1, -1 },
          animation = {
            {
              tileid = 464,
              duration = 200
            },
            {
              tileid = 435,
              duration = 200
            }
          }
        },
        {
          id = 465,
          terrain = { 2, 2, -1, -1 },
          animation = {
            {
              tileid = 465,
              duration = 200
            },
            {
              tileid = 436,
              duration = 200
            }
          }
        },
        {
          id = 466,
          terrain = { 2, -1, -1, -1 },
          animation = {
            {
              tileid = 466,
              duration = 200
            },
            {
              tileid = 437,
              duration = 200
            }
          }
        },
        {
          id = 468,
          animation = {
            {
              tileid = 468,
              duration = 250
            },
            {
              tileid = 439,
              duration = 250
            }
          }
        },
        {
          id = 493,
          terrain = { -1, -1, 0, 0 },
          animation = {
            {
              tileid = 493,
              duration = 200
            },
            {
              tileid = 320,
              duration = 200
            }
          }
        },
        {
          id = 494,
          terrain = { -1, -1, 0, 0 },
          animation = {
            {
              tileid = 494,
              duration = 200
            },
            {
              tileid = 320,
              duration = 200
            }
          }
        },
        {
          id = 495,
          terrain = { -1, -1, 0, 0 },
          animation = {
            {
              tileid = 495,
              duration = 200
            },
            {
              tileid = 320,
              duration = 200
            }
          }
        },
        {
          id = 497,
          animation = {
            {
              tileid = 497,
              duration = 250
            },
            {
              tileid = 320,
              duration = 250
            }
          }
        },
        {
          id = 498,
          terrain = { 1, -1, 1, 1 }
        },
        {
          id = 499,
          terrain = { -1, -1, 1, 1 }
        },
        {
          id = 500,
          terrain = { -1, 1, 1, 1 }
        },
        {
          id = 506,
          animation = {
            {
              tileid = 506,
              duration = 100
            },
            {
              tileid = 507,
              duration = 100
            }
          }
        }
      }
    }
  },
  layers = {
    {
      type = "tilelayer",
      name = "floor",
      x = 0,
      y = 0,
      width = 32,
      height = 32,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 246, 213, 213, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 213, 241, 213, 0, 0, 0, 0, 0, 0,
        0, 423, 423, 0, 423, 423, 213, 213, 213, 241, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 213, 213, 213, 423, 423, 0, 423, 423, 0,
        0, 0, 0, 0, 0, 0, 213, 213, 213, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 213, 213, 213, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 213, 213, 213, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 213, 213, 213, 0, 0, 0, 0, 0, 0,
        0, 423, 0, 0, 0, 423, 213, 213, 213, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 213, 213, 213, 423, 0, 0, 0, 423, 0,
        0, 423, 0, 0, 0, 423, 213, 213, 246, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 213, 213, 213, 423, 0, 0, 0, 423, 0,
        0, 423, 0, 0, 0, 423, 213, 213, 241, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 246, 213, 246, 213, 213, 423, 0, 0, 0, 423, 0,
        0, 423, 0, 0, 0, 423, 213, 213, 213, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 213, 241, 213, 423, 0, 0, 0, 423, 0,
        0, 423, 0, 0, 0, 423, 213, 213, 213, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 246, 213, 213, 213, 213, 213, 213, 423, 0, 0, 0, 423, 0,
        0, 423, 0, 0, 0, 423, 213, 213, 213, 213, 246, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 213, 213, 213, 423, 0, 0, 0, 423, 0,
        0, 423, 0, 0, 0, 423, 213, 213, 213, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 213, 213, 213, 423, 0, 0, 0, 423, 0,
        0, 423, 0, 0, 0, 423, 213, 213, 213, 213, 213, 213, 246, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 213, 213, 213, 423, 0, 0, 0, 423, 0,
        0, 423, 0, 0, 0, 423, 213, 213, 213, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 241, 213, 213, 213, 213, 213, 423, 0, 0, 0, 423, 0,
        0, 423, 0, 0, 0, 423, 423, 213, 213, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 246, 213, 213, 423, 423, 0, 0, 0, 423, 0,
        0, 423, 0, 0, 0, 0, 423, 213, 213, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 213, 213, 423, 0, 0, 0, 0, 423, 0,
        0, 423, 0, 0, 0, 0, 423, 213, 213, 213, 213, 241, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 213, 213, 423, 0, 0, 0, 0, 423, 0,
        0, 423, 423, 0, 0, 0, 423, 213, 213, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 246, 213, 213, 213, 423, 0, 0, 0, 423, 423, 0,
        0, 213, 423, 0, 0, 0, 423, 213, 213, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 213, 213, 423, 0, 0, 0, 423, 213, 0,
        0, 213, 423, 0, 0, 0, 423, 213, 213, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 213, 213, 423, 0, 0, 0, 423, 213, 0,
        0, 213, 423, 0, 0, 0, 423, 423, 423, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 423, 423, 423, 0, 0, 0, 423, 213, 0,
        0, 213, 423, 0, 0, 0, 0, 0, 423, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 423, 0, 0, 0, 0, 0, 423, 213, 0,
        0, 213, 423, 0, 0, 0, 0, 0, 423, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 423, 0, 0, 0, 0, 0, 423, 213, 0,
        0, 213, 423, 0, 0, 0, 0, 0, 423, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 423, 0, 0, 0, 0, 0, 423, 213, 0,
        0, 213, 423, 423, 423, 0, 0, 0, 423, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 423, 0, 0, 0, 423, 423, 423, 213, 0,
        0, 213, 213, 213, 423, 0, 0, 0, 423, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 423, 0, 0, 0, 423, 213, 213, 213, 0,
        0, 213, 213, 213, 423, 0, 0, 0, 423, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 423, 0, 0, 0, 423, 213, 213, 213, 0,
        0, 213, 213, 241, 423, 0, 0, 0, 423, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 241, 423, 0, 0, 0, 423, 213, 213, 213, 0,
        0, 213, 213, 213, 423, 0, 0, 0, 423, 213, 213, 213, 213, 213, 213, 395, 395, 213, 213, 213, 213, 213, 213, 423, 0, 0, 0, 423, 213, 213, 213, 0,
        0, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 0
      }
    },
    {
      type = "tilelayer",
      name = "walls",
      x = 0,
      y = 0,
      width = 32,
      height = 32,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 158, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 159, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 186, 213, 242, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 213, 186, 0, 0, 0, 0, 0,
        158, 156, 156, 156, 156, 188, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 271, 187, 156, 156, 156, 156, 159,
        186, 213, 213, 213, 213, 214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 212, 213, 213, 213, 213, 186,
        186, 271, 271, 271, 271, 272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 270, 271, 271, 271, 271, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 37, 0, 0, 0, 0, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        186, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 186,
        187, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 156, 188
      }
    },
    {
      type = "tilelayer",
      name = "objects",
      x = 0,
      y = 0,
      width = 32,
      height = 32,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {},
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 147, 147, 147, 0, 0, 0, 0, 147, 147, 147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 147, 147, 147, 0, 82, 85, 0, 147, 147, 147, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 436, 437, 438, 0, 0, 0, 0, 0, 0, 176, 147, 176, 0, 138, 145, 0, 176, 147, 176, 0, 0, 0, 0, 0, 0, 436, 437, 438, 0, 0,
        0, 0, 436, 437, 438, 0, 0, 0, 0, 0, 0, 507, 176, 147, 0, 0, 0, 0, 147, 176, 507, 0, 0, 0, 0, 0, 0, 436, 437, 438, 0, 0,
        0, 0, 465, 466, 467, 0, 0, 0, 0, 0, 0, 0, 507, 176, 147, 0, 0, 147, 176, 507, 0, 0, 0, 0, 0, 0, 0, 465, 466, 467, 0, 0,
        0, 291, 494, 495, 496, 293, 0, 0, 0, 0, 0, 0, 0, 507, 176, 0, 0, 176, 507, 0, 0, 0, 0, 0, 0, 0, 291, 494, 495, 496, 293, 0,
        0, 349, 295, 437, 294, 351, 0, 0, 0, 0, 0, 0, 0, 0, 507, 0, 0, 507, 0, 0, 0, 0, 0, 0, 0, 0, 349, 295, 437, 294, 351, 0,
        0, 0, 320, 439, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 437, 322, 0, 0,
        0, 0, 320, 437, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 437, 322, 0, 0,
        0, 0, 320, 437, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 468, 322, 0, 0,
        0, 0, 320, 437, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 437, 322, 0, 0,
        0, 0, 320, 437, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 437, 322, 0, 0,
        0, 0, 320, 437, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 437, 322, 0, 0,
        0, 0, 320, 437, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 437, 322, 0, 0,
        0, 0, 320, 437, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 439, 322, 0, 0,
        0, 0, 320, 468, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 437, 322, 0, 0,
        0, 0, 320, 437, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 437, 322, 0, 0,
        0, 0, 320, 437, 323, 293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 291, 324, 321, 322, 0, 0,
        0, 0, 349, 295, 437, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 437, 294, 351, 0, 0,
        0, 0, 0, 320, 437, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 437, 322, 0, 0, 0,
        0, 0, 0, 320, 437, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 437, 322, 0, 0, 0,
        0, 0, 0, 320, 437, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 439, 322, 0, 0, 0,
        0, 0, 0, 320, 437, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 437, 322, 0, 0, 0,
        0, 0, 0, 320, 437, 323, 292, 293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 291, 292, 324, 437, 322, 0, 0, 0,
        0, 0, 0, 320, 321, 321, 321, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 321, 321, 321, 322, 0, 0, 0,
        0, 0, 0, 349, 350, 295, 437, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 437, 294, 350, 351, 0, 0, 0,
        0, 0, 0, 0, 0, 320, 437, 322, 0, 0, 0, 0, 0, 0, 507, 0, 0, 507, 0, 0, 0, 0, 0, 0, 320, 468, 322, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 320, 439, 322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 320, 437, 322, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 320, 437, 322, 0, 0, 0, 0, 0, 147, 0, 0, 0, 0, 147, 0, 0, 0, 0, 0, 320, 437, 322, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 320, 437, 322, 0, 0, 0, 0, 0, 176, 0, 0, 0, 0, 176, 0, 0, 0, 0, 0, 320, 439, 322, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 320, 437, 322, 0, 0, 0, 0, 0, 0, 147, 0, 0, 147, 0, 0, 0, 0, 0, 0, 320, 437, 322, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 465, 466, 467, 0, 0, 0, 0, 0, 0, 176, 0, 0, 176, 0, 0, 0, 0, 0, 0, 465, 466, 467, 0, 0, 0, 0, 0
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
          id = 3,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 432,
          y = 32,
          width = 48,
          height = 272,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 416,
          y = 272,
          width = 48,
          height = 144,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 384,
          y = 368,
          width = 48,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 8,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 32,
          y = 32,
          width = 48,
          height = 272,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 9,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 48,
          y = 272,
          width = 48,
          height = 144,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 10,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 80,
          y = 368,
          width = 48,
          height = 128,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 11,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 272,
          y = 479,
          width = 16,
          height = 17,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 12,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 288,
          y = 448,
          width = 16,
          height = 31.4616,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 13,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 208,
          y = 448,
          width = 16,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 14,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 224,
          y = 480,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 15,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 227,
          y = 416,
          width = 10,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 16,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 275,
          y = 416,
          width = 10,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 19,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 80,
          y = 496,
          width = 352,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 21,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 80,
          y = 0,
          width = 16,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 23,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 96,
          y = 0,
          width = 80,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 26,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 224,
          y = 0,
          width = 64,
          height = 18,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 27,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 336,
          y = 0,
          width = 80,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 28,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 416,
          y = 0,
          width = 16,
          height = 112,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 31,
          name = "",
          type = "pit",
          shape = "rectangle",
          x = 390,
          y = 54,
          width = 5,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 32,
          name = "",
          type = "pit",
          shape = "rectangle",
          x = 390,
          y = 166,
          width = 5,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 33,
          name = "",
          type = "pit",
          shape = "rectangle",
          x = 326,
          y = 246,
          width = 5,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 34,
          name = "",
          type = "pit",
          shape = "rectangle",
          x = 182,
          y = 294,
          width = 5,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 35,
          name = "",
          type = "pit",
          shape = "rectangle",
          x = 134,
          y = 150,
          width = 5,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 36,
          name = "",
          type = "pit",
          shape = "rectangle",
          x = 150,
          y = 70,
          width = 5,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 37,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 288,
          y = 0,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 38,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 320,
          y = 0,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 39,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 272,
          y = 64,
          width = 16,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 40,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 291,
          y = 80,
          width = 10,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 42,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 224,
          y = 64,
          width = 16,
          height = 32,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 43,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 208,
          y = 64,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 44,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 195,
          y = 64,
          width = 10,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 45,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 192,
          y = 0,
          width = 32,
          height = 64,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 51,
          name = "",
          type = "slime",
          shape = "rectangle",
          x = 208,
          y = 176,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 52,
          name = "",
          type = "slime",
          shape = "rectangle",
          x = 320,
          y = 160,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 55,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 288,
          y = 64,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 58,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 176,
          y = 0,
          width = 16,
          height = 48,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 62,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 323,
          y = 48,
          width = 10,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 63,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 307,
          y = 64,
          width = 10,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 64,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 275,
          y = 96,
          width = 10,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 65,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 227,
          y = 96,
          width = 10,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 66,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 211,
          y = 80,
          width = 10,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 67,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 179,
          y = 48,
          width = 10,
          height = 15,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 75,
          name = "",
          type = "spawn",
          shape = "rectangle",
          x = 248,
          y = 472,
          width = 16,
          height = 24,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 76,
          name = "",
          type = "doorway",
          shape = "rectangle",
          x = 242,
          y = 18,
          width = 28,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {
            ["sourceID"] = 0,
            ["sourceMap"] = "Testmaps/dungeon_entrance",
            ["targetID"] = "0",
            ["targetMap"] = "Testmaps/newTilesets"
          }
        },
        {
          id = 78,
          name = "",
          type = "pit",
          shape = "rectangle",
          x = 358,
          y = 470,
          width = 5,
          height = 8,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 82,
          name = "",
          type = "slime",
          shape = "rectangle",
          x = 368,
          y = 112,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 83,
          name = "",
          type = "slime",
          shape = "rectangle",
          x = 160,
          y = 112,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 84,
          name = "",
          type = "slime",
          shape = "rectangle",
          x = 192,
          y = 272,
          width = 16,
          height = 16,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 86,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 224,
          y = 18,
          width = 18,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 88,
          name = "",
          type = "wall",
          shape = "rectangle",
          x = 270,
          y = 18,
          width = 18,
          height = 30,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
