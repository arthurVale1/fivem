
local cfg = {}

-- define static item transformers
-- see https://github.com/ImagicTheCat/vRP to understand the item transformer concept/definition

cfg.item_transformers = {
  -- example of harvest item transformer
  {
    name="Trash Can", -- menu name
    -- permissions = {"harvest.water_bottle_tacos"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=10,
    units_per_minute=1,
    x=231.40283203125,y=-1507.09191894531,z=29.2916603088379, -- pos
    radius=5, height=1.5, -- area
    recipes = {
      ["Harvest water"] = { -- action name
        description="Harvest some water bottles.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["water"] = 1
        }
      },
      ["Harvest tacos"] = { -- action name
        description="Harvest some tacos.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["tacos"] = 1
        }
      }
    }
    --, onstart = function(player,recipe) end, -- optional start callback
    -- onstep = function(player,recipe) end, -- optional step callback
    -- onstop = function(player,recipe) end -- optional stop callback
  },
  {
    name="Academia", -- menu name
    r=255,g=125,b=0, -- color
    max_units=1000,
    units_per_minute=1000,
    x=-1202.96252441406,y=-1566.14086914063,z=4.61040639877319, -- pos
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Força"] = { -- action name
        description="Aumente sua força e stamina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={}, -- items given per unit
        aptitudes={ -- optional
          ["physical.strength"] = 1 -- "group.aptitude", give 1 exp per unit
        }
      }
    }
  },
  {
    name="Campo de Ervas", -- menu name
    permissions = {"harvest.weed"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=20000000,
    units_per_minute=5,
    x=2208.777,y=5578.235,z=53.735, -- pos
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- action name
        description="Colher maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["weed"] = 1
        }
      }
    }
  },
  -- VENDER MACONHA
  {
    name="Vender Ganja", -- menu name
    permissions = {"sell.weed"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=999999, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=-768.02526855469,y=4327.3779296875,z=148.72492980957, -- pos 
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Ganja"] = { -- action name
        description="", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["cannabis"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 280
        }
      }
    }
  },
  -- CAMPO DE METANFETAMINA    
  {
    name="Campo de Metanfetamina", -- Nome do menu
    permissions = {"harvest.metanfetamina"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=200000000,
    units_per_minute=5,
    x=79.686859130859,y=3705.6840820313,z=41.077156066895, -- Localização
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- Nome da ação
        description="Colher Crystal Melamine.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["crystalmelamine"] = 1
        }
      }
    }
  },  
  -- PROCESSADOR DE METANFETAMINA
  {
    name="Processamento de Meta", -- menu name
    permissions = {"process.metanfetamina"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=859.04583740234,y=-249.24278259277,z=73.448707580566, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processar Metanfetamina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["crystalmelamine"] = 1
	    },
        products={ -- items given per unit
          ["metanfetamina"] = 2,
        }
      }
    }
  },
  -- VENDER METANFETAMINA
  {
    name="Vender Meta", -- menu name
    permissions = {"sell.metanfetamina"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=222222, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=2339.9306640625,y=2570.4348144531,z=47.729030609131, -- pos 
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Meta"] = { -- action name
        description="", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["metanfetamina"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 210
        }
      }
    }
  },
  -- CAMPO DE COCAINA    
  {
    name="Campo de Cocaina", -- Nome do menu
    permissions = {"harvest.cocaina"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=200000000000,
    units_per_minute=5,
    x=-41.372623443604,y=3033.3776855469,z=41.020195007324, -- Localização
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- Nome da ação
        description="Colher folha de Coca.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["folhadecoca"] = 1
        }
      }
    }
  },
  -- PROCESSADOR DE COCAINA
  {
    name="Processamento de cocaina", -- menu name
    permissions = {"process.cocaina"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=1320.6499023438,y=-738.02856445313,z=65.7099609375, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processar cocaina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["folhadecoca"] = 1
	    },
        products={ -- items given per unit
          ["cocaina"] = 2
        }
      }
    }
  },
  -- VENDER COCAINA
  {
    name="Vender Coca", -- menu name
    permissions = {"sell.cocaina"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=999999, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=1861.2912597656,y=4969.158203125,z=52.754020690918, -- pos 
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Coca"] = { -- action name
        description="", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["cocaina"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 250
        }
      }
    }
  },
  -- CAMPO DE Madeira    
  {
    name="Campo de Madeira", -- Nome do menu
    permissions = {"harvest.madeira"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=200000000000,
    units_per_minute=5,
    x=-807.05926513672,y=5389.2045898438,z=34.516994476318, -- Localização
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- Nome da ação
        description="Colher Po de Madeira", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["podemadeira"] = 1
        }
      }
    }
  },
  -- PROCESSADOR DE Madeira
  {
    name="Processamento de Madeira", -- menu name
    permissions = {"process.madeira"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=2000000000, -- unidades maximas do item
    units_per_minute=5, -- unidades que o transformador ganha de volta por minuto
    x=-2786.1086425781,y=1431.8973388672,z=100.92837524414, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processar po de Madeira.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["podemadeira"] = 1
	    },
        products={ -- items given per unit
          ["madeira"] = 2
        }
      }
    }
  },
  -- VENDER Madeira
  {
    name="Vender Madeira", -- menu name
    permissions = {"sell.madeira"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=20000000, -- unidades maximas do item
    units_per_minute=5, -- unidades que o transformador ganha de volta por minuto
    x=-1854.2032470703,y=-615.64837646484,z=11.160566329956, -- pos 
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Madeira"] = { -- action name
        description="", -- action description
        in_money=0, -- money taken per unit
        out_money=360, -- money earned per unit
        reagents={  -- items taken per unit
          ["madeira"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 0
        }
      }
    }
  },
  -- CAMPO DE OURO
  {
    name="Campo de Ouro", -- Nome do menu
    permissions = {"harvest.ouro"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=2000000,
    units_per_minute=5,
    x=-554.33685302734,y=5324.029296875,z=73.599601745605, -- Localização
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- Nome da ação
        description="pepita de ouro.", -- Descrição do produto a se colher
        in_money=50, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["pepitadeouro"] = 1
        }
      }
    }
  }, 
  -- PROCESSADOR DE OURO
  {
    name="Processamento de ouro", -- menu name
    permissions = {"process.ouro"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=2000000, -- unidades maximas do item
    units_per_minute=5, -- unidades que o transformador ganha de volta por minuto
    x=-1514.6323242188,y=1514.2767333984,z=115.28859710693, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processar ouro.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["pepitadeouro"] = 1
	    },
        products={ -- items given per unit
          ["ouro"] = 2
	    }
      }
    }
  },
  -- VENDER OURO
  {
    name="Vender Ouro", -- menu name
    permissions = {"venda.ouro"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=-817.21002197266,y=-798.64349365234,z=19.556680679321, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Ouro"] = { -- action name
        description="Vender ouro", -- action description
        in_money=0, -- money taken per unit
        out_money=430, -- money earned per unit
        reagents={  -- items taken per unit
          ["ouro"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 0
        }
      }
    }
  },	
  -- PESCADOR DE TARTARUGA
  {
    name="Pescador de Tartaruga", -- menu name
    permissions = {"harvest.tartaruga"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=20000000, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=4095.5485839844,y=4464.8696289063,z=1.9822434186935, -- pos
    radius=5.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Pescar"] = { -- action name
        description="Pescar Tartaruga com Rede.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["rede"] = 1
      },
        products={ -- items given per unit
          ["Tartaruga"] = 2
        }
      }
    }
  },
  -- VENDER TARTARUGA
  {
    name="Vender Tartaruga", -- menu name
    permissions = {"process.Tartaruga"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=-119.17678833008,y=-1486.1040039063,z=36.98205947876, -- pos 
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Tartaruga"] = { -- action name
        description="", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["Tartaruga"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 390
        }
      }
    }
  },
  
  -- Lavagem de dinheiro
 {
      name="Lavagem de Dinheiro",
      r=0,g=200,b=0, ---cores
      max_units=1000000000,
      units_per_minute=1000,
      x=-1056.4289550781,y=-242.60389709473,z=44.021060943604, -- coordenas mudas aqui
      radius=2.5, height=1.5, -- area
      recipes = {
        ["Lavar Dinheiro"] = { -- action name
          description="Lavagem de Dinheiro", -- action description
          in_money=0, -- money taken per unit
          out_money=750, -- money earned per unit
          reagents={
            ["dirty_money"] = 1000
          }, -- items taken per unit
          products={}, -- items given per unit
      }
    }
  },
  
    -- Cartões clonáveis
  {
    name="Cartões Clonáveis", -- Nome do menu
    permissions = {"pick.toclonecards"}, -- you can add permissions
    r=0,g=200,b=0, -- cor
    max_units=2000000,
    units_per_minute=2,
    x=261.61892700195,y=204.29025268555,z=110.28720855713, -- Localização    
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Pegar"] = { -- Nome da ação
        description="Pegar cartões clonáveis", -- Descrição do produto a se colher
        in_money=50, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["toclonecards"] = 1,
        }
      }
    }
  },
  
    -- CLONAR CARTÕES
  {
    name="Clonagem de Cartões", -- menu name
    permissions = {"clone.cards"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=20000000, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=-1054.0205078125,y=-230.26893615723,z=44.020957946777, -- pos 
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Clonar cartões"] = { -- action name
        description="", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["toclonecards"] = 1
      },
        products={ -- items given per unit
          ["clonedcards"] = 1
        }
      }
    }
  },
  
    -- VENDER CARTÕES CLONADOS
  {
    name="Cartões Clonados", -- menu name
    permissions = {"sell.clonedcards"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=2000000, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=-621.35168457031,y=36.309566497803,z=43.566032409668, -- pos 
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Vender Cartões Clonados"] = { -- action name
        description="", -- action description
        in_money=0, -- money taken per unit
        out_money=250, -- money earned per unit
        reagents={  -- items taken per unit
          ["clonedcards"] = 1
      },
        products={ -- items given per unit
          ["dirty_money"] = 250
        }
      }
    }
  },
-- Carro Forte
  {
    name="Cofre", -- menu name
	permissions = {"bankdriver.money"}, -- you can add permissions
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=253.90089416504,y=225.21408081055,z=101.87578582764,
    radius=2, height=1.0, -- area
    recipes = {
      ["Dinheiro do Banco"] = { -- action name
       description="Pegar dinheiro do banco.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["bank_money"] = 500000
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },
  
  {
    name="OAB", -- menu name
	permissions = {"advogado.oab"},
    r=255,g=125,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=-77.134468078613,y=-802.86267089844,z=243.40579223633,
    radius=2, height=1.0, -- area
    recipes = {
      ["OAB"] = { -- action name
       description="Carteira de Advogado.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
		["oab"] = 1
		}, -- items given per unit
        aptitudes={} -- optional
      }
    }
  },  
  
  {
    name="Processamento de Ervas", -- menu name
    permissions = {"process.weed"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=200, -- unidades que o transformador ganha de volta por minuto
    x=473.234375,y=-1685.9187011719,z=29.381641387939, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processar Maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["weed"] = 1
		},
        products={ -- items given per unit
		  ["cannabis"] = 2
        }
      }
    }
  },
}



-- define multiple static transformers with postions list
local weedplants = {
  {1873.36901855469,3658.46215820313,33.8029747009277},
  {1856.33776855469,3635.12109375,34.1897926330566},
  {1830.75390625,3621.44140625,33.8487205505371},
  {1784.70251464844,3579.93798828125,34.7956123352051},
  {182.644317626953,3315.75537109375,41.4806938171387},
  {1764.65661621094,3642.916015625,34.5866050720215},
  {1512.91027832031,1673.76025390625,111.531875610352}
}
for k,v in pairs(weedplants) do
  local plant = {
    name="Planta de Maconha", -- menu name
    --permissions = {"harvest.weed"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=v[1],y=v[2],z=v[3], -- pos
    radius=5.0, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- action name
        description="Colher maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["weed"] = 1
        }
      }
    }
  }
  table.insert(cfg.item_transformers, plant)
end

local warehouses = {
  {-1111.2841796875,4937.4052734375,218.386306762695},
  {1539.01794433594,1704.29174804688,109.659622192383},
  {981.412841796875,-1805.70349121094,35.4845695495605}
}
for k,v in pairs(warehouses) do
  local warehouse = {
    name="Oficina de armas", -- menu name
    permissions = {"build.gun"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=10,
    units_per_minute=1,
    x=v[1],y=v[2],z=v[3], -- pos
    radius=5.0, height=1.5, -- area
    recipes = {
      ["Build Pistol"] = { -- action name
        description="Construir pistola.", -- action description
        in_money=1500, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
		  ["pistol_parts"] = 1
		}, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_PISTOL"] = 1
        }
      },
      ["Build Shotgun"] = { -- action name
        description="Construir shotgun.", -- action description
        in_money=3000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
		  ["shotgun_parts"] = 1
		}, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_PUMPSHOTGUN"] = 1
        }
      },
      ["Build SMG"] = { -- action name
        description="Construir submachinegun.", -- action description
        in_money=5000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
		  ["smg_parts"] = 1
		}, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_SMG"] = 1
        }
      }
    }
  }
  table.insert(cfg.item_transformers, warehouse)
end

-- define transformers randomly placed on the map
cfg.hidden_transformers = {
  ["weed plant"] = {
    def = {
      name="Weed Plant", -- menu name
      r=0,g=200,b=0, -- color
      max_units=50,
      units_per_minute=0,
      x=0,y=0,z=0, -- pos
      radius=0, height=0, -- area
      recipes = {
      }
    },
    positions = weedplants
  },
  ["gun warehouse"] = {
    def = {
      name="Gun Warehouse", -- menu name
      r=0,g=200,b=0, -- color
      max_units=50,
      units_per_minute=0,
      x=0,y=0,z=0, -- pos
      radius=0, height=0, -- area
      recipes = {
      }
    },
    positions = warehouses
  }
}

-- time in minutes before hidden transformers are relocated (min is 5 minutes)
cfg.hidden_transformer_duration = 30-- 12 hours -- 5*24*60 -- 5 days

-- configure the information reseller (can sell hidden transformers positions)
cfg.informer = {
  infos = {
    ["weed plant"] = 10000,
    ["gun warehouse"] = 25000
  },
  positions = {
    {1821.12390136719,3685.9736328125,34.2769317626953},
    {1804.2958984375,3684.12280273438,34.217945098877}
  },
  interval = 30, -- interval in minutes for the reseller respawn
  duration = 10, -- duration in minutes of the spawned reseller
  blipid = 133,
  blipcolor = 2
}

return cfg
