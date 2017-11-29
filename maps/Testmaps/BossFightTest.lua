return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "0.18.2",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 32,
  height = 32,
  tilewidth = 16,
  tileheight = 16,
  nextobjectid = 8,
  properties = {},
  tilesets = {
    {
      name = "Dungeon",
      firstgid = 1,
      filename = "tilesets/dungeon.tsx",
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
      name = "Tile Layer 1",
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
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
        69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69, 69
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
          name = "",
          type = "spawn",
          shape = "rectangle",
          x = 229,
          y = 374,
          width = 19,
          height = 20,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 2,
          name = "",
          type = "bHunter",
          shape = "rectangle",
          x = 61,
          y = 54,
          width = 22,
          height = 22,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 3,
          name = "",
          type = "1",
          shape = "rectangle",
          x = 60,
          y = 451,
          width = 32,
          height = 23,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 5,
          name = "",
          type = "2",
          shape = "rectangle",
          x = 394,
          y = 455.5,
          width = 32,
          height = 23,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 6,
          name = "",
          type = "3",
          shape = "rectangle",
          x = 403,
          y = 57.5,
          width = 32,
          height = 23,
          rotation = 0,
          visible = true,
          properties = {}
        },
        {
          id = 7,
          name = "",
          type = "4",
          shape = "rectangle",
          x = 63,
          y = 53.5,
          width = 32,
          height = 23,
          rotation = 0,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
