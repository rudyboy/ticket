require 'net/http'
require 'rufus/scheduler'

cookie = 
index = 'http://m.lailaihui.com/index'
uri = URI.parse index
#refer http://www.51testing.com/html/79/605679-850873.html

cookie = '.lailaihui=A52DAB3DB6CB8F76D724608AD4C88D245F2AD58A74C5D59D2C3EA1F3332DFEF3BA9B3F1BE669EA3298B98865AA5978A64B0AB3DB04F45BE839D94FFCD944EEEF613D9E490297E071D9697192F7DF42594DF5E86C0118C6143DC7FFCDB0E01740E501FBADE05FA062E91780005411EE6F3FDDB9D3167E1499245F823AF20EB27BAF08368695C40E8C028419ADECA25BB6CA4E4A4D25F46573865938C4C7506AC78363FBC809837590EEA97468E7323DE59A46A10DF3BD62216D4B989D027BECA03C965A950978F5589BB0AA8DDE6E5C80F93BBF7F987D3B35A8638661B8B2952D626C155CBDDAE3D4617DEB84C5464AD6F814300B6BA867BA396D37E318C1F8B043A34A45285C40609DAA517E781EC34F360772574F3AC8CE67593A736E23AECBF979C70F7EFE4BD5A73E26DEA8A43F11762B5BFCF450C0CC9C9878248B5B3DCC21C5DFE9768A421A51F5D3D516027ACFCEC058A7871F7CB430FC79995465DA7D1E0E2D4763A3D3E1F70637EC27B79904A4B611A67C3C650987DF1D823CCD91FCFFC678D8DC6B90F0B3E915E1584DAA3C0F36FA717DC65D48769958C0DC4B0E275D344513A623B46E6B2530EC91D187A2E64AAB31F8E44630BE0EB85D37DC525B5920FA8FEFF586FA3770F31E42EADBED0F8403C5267D79F095117B3CB838732DD29DA4E71203981F76B10A06EC35A191CFAE8DB94F127CF92FE3D2F9587F2C80A66F11DC1712554A8A1AC094B9CB925401B6CF7AE98CAF64D3B06A30AD72F7902084C8F15B37BCEC70A45B20913D04F3C23A02368CDB24C1AC91E1AD1446A77E06A6177E44730BFF12ADD69B7EF27AE2EBE4D6AA2F9E5A097C71356126C7905A62A7553CE568D5E557F75E218BC98616B0672CA5DDACFA25CAE12155EF7928136A0922B7E5BF45F58E5DBE57FE9FE87F60AB3B28F4D09215833BB8B9F22311C4490A9D8CE225683A199F9EB4A25C26E92F76133F154B39D7C371ED418F06FAAD6436AFBE8CD35AF973839F635B33513B4A47EBFC55BD74954B70C578701A4ADB82E8A0DE8FFC7F45B8ECE5717DF02CFA832173540E869FC03BC34D7FBA8EF4AB470AF2F98FFD8459571E1E02C5DFB363B885FB19F1F66F4038E5023EF06A31CFB2059F8773245C4B32CFEFBC39B96B53C90DBEB760A77CE62E5DB2C080DB14B0CCA87E2120906F525EF3AAE8F94B75DABBE5C234D5431422F24DF396E3C6A6DA65363BA75271CA00E1B062B9AF3AE0C85E17AB4D358BBCFB830B825299DD088BD0F90403238B4048E02DB4DB0B80B4AB8078D1B44B28EBD34C7139CAF3A0FBFF2E1805850E145449DA373DF8A3411375AD6E9341D854AC640115CE94918AF867D741C2CA9C2A0E05E32DDFD1EF755547A2B2334491721FF97B9ABABFA70AEEFB11C225B852F3D3CF19A44DC28621088E6EA9D24ABDB02E5C31FF9A095C5DFE7C5D1928E3CEC0E1D2BB387EAFB0CE961E35FE71C9B62A98C0F95E12DFA11685E9C6780B952374390C9E70F7ABC0E0E4BD9E4D3D4FC37C5BDE5EB0CE93BBAD867E11F35CF30418E5104436836FA4CBCC8B09B180F215BFEC45BE265B7A727996AF5571C78552AD266FFFAAD9FD914485997037F53FED5D4F82EA29F3FFE373CC69E355DE810897BF763EEC0E19530153835FFD9F1CBBBE4FEE39B018280EAE150995DCC3EE4D4B767404E67FFCDB42C2D01862FD6538762B6F511AD436745635BC88E4D295A7539A6160ABAB3C2925AC5CB12433BC308D2DF14B064F304107F5FF178C0B60106A5443173E91FA4FFBB5BD4F7A89C93F662D48B0D63A7BA76C2B5688AF89A54755B12BDDDC0C9184C66E6870919FB030DC237E51E2EA0101501946FD1DA9C742BB19B6DD2C352B4EF0393E83955166ACB7C8FF5E37BC6263CA9280CE586F6FB598DBBE07280ECAD9B821171483D71F6E64AF008E34AE7B18E44829AE34D4AE3E01523B0D3E2C730E0A101979E8AB286A91636665289053577C1E843D0B7166586690A01AAA0C02E5D2031CA0D7EF7344BA67210F91004B492CBD9A1F6B78316B8B082856DAC560503B35FC8C5769EA8BD4D1A8649A68620B5DB21C7C7E1D362E00D5EA16F7865E39699669576'
cookie += 'E3A44CD37A5C9D082840086F71FF167D2E5A32C8A66C69DDBE646E1D42D40094A35BF3FC20D074486E7449D54863A8A04D07D0ABE2AC3CC069CB000A11BD1DCC4128A9DFF5F119D3637E6FA1BE8DC27B39068DE1542F81881E72AB7DB5D3B637C67EB89B94187295A1B9C4ABE58CBF4AC26B524B0A849276415F65896E03442592A02DD6924082E6F4403A13BE8687869538EE919AAD50C17136762CA52604F3DA8E25721071CD5D391D6F1CC1D242426E280FFB8EA2F8E2288F1A7AFD7F5; JSESSIONID=BCDFB7B7FB601147C014F4788E97870A-n1'

refer = 'http://m.lailaihui.com/fline/reserve/1257_2014-06-09'
path = '/doFreeLineReserve.action?flReserve.promotionId=0&flReserve.lineId=1257&flReserve.goDate=2014-06-09&flReserve.mealId=1680'

http = Net::HTTP.new(uri.host,uri.port)

data = {"flReserve.adult" => "2", "flReserve.child" => "0", "flReserve.roomNum" => "1", "flReserve.name" => "韩石市",
"flReserve.mobile" => "15201611234", "flReserve.email" => "2570177118@qq.com", "flReserve.orderMsg" => "",
"flReserve.attachments" => "9,2,2014-06-09"}

request =  Net::HTTP::Post.new(path)
request.initialize_http_header({"Cookie" => cookie, "Referer" => refer})
request.set_form_data(data)

p request.path

response = http.request(request)
f = File.open("./grade.html", "w")
f.write response.body
p response.body
p response.code

#https://github.com/jmettraux/rufus-scheduler/blob/two/README.rdoc

