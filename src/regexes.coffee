exports.DELIMITER = new RegExp('\r?\n')

exports.FWD = new RegExp("^[-]+[ ]*Forwarded message[ ]*[-]+$", 'im')

# On {date}, {somebody} wrote:
exports.ON_DATE_SMB_WROTE = new RegExp("(-*[>]?[ ]?(On|Le|W dniu|Op|Am|P\xe5|Den|En|De|Auf|In|An|Le|La|Il|Al|I|Se|على|عند)[ ].*(,|u\u017cytkownik|Benutzer|Bruger|Gebruiker|Anv\u00e4ndare|Utilisateur|كتب|أرسل|escreveu|skickade|من|إلى|De|Para|Que|Da|Kwa|Cho|من|به|مرسله)[ ]*(.*\n){0,2}.*(wrote|sent|a \xe9crit|napisa\u0142|schreef|verzond|geschreven|schrieb|skrev|hat geschrieben|skickade|كتب|أرسل|escreveu|skickade|ได้เขียน|ได้ส่ง|Napakasulat|Napadala|Nasulat|Naipadala|Naipadala na|Ng):?-*)")
# On {date} wrote {somebody}:
exports.ON_DATE_WROTE_SMB = new RegExp('(-*[>]?[ ]?(Op|Am|På|Den|En|De|Auf|In|An|Le|La|Il|Al|I|Se|على|عند)[ ].*(.*\n){0,2}.*(schreef|verzond|geschreven|schrieb|hat geschrieben|skrev|كتب|أرسل|escreveu|skickade)[ ]*.*:)')

exports.QUOTATION = new RegExp('((?:s|(?:me*){2,}).*me*)[te]*$')
exports.EMPTY_QUOTATION = new RegExp('((?:s|(?:me*){2,}))e*')

exports.ORIGINAL_MESSAGE = new RegExp('[\\s]*[-]+[ ]*(Original Message|Reply Message|Ursprüngliche Nachricht|Antwort Nachricht|Oprindelig meddelelse|Message d\'origine|Réponse|Messaggio originale|Risposta|Melding|Svar|Orignalmeddelelse|Svarmeddelelse|رسالة أصلية|رد)[ ]*[-]+', 'i')
exports.FROM_COLON_OR_DATE_COLON = new RegExp('(_+\r?\n)?[\\s]*(:?[*]?From|Van|De|Von|Fra|Från|Date|Datum|Envoyé|Skickat|Sendt|Da|من|إلى|De|Para|Que|Da|Kwa|Cho|من|به|مرسله)[\\s]?:[*]? .*', 'i')

exports.DATE_PERSON = new RegExp('(\\d+/\\d+/\\d+|\\d+\\.\\d+\\.\\d+).*@')
exports.SPELLED_OUT_DATE = new RegExp('\\S{3,10}, \\d\\d? \\S{3,10} 20\\d\\d,? \\d\\d?:\\d\\d(:\\d\\d)?( \\S+){3,6}@\\S+:')

exports.LINK = new RegExp('<(https?://[^>]*)>')
exports.NORMALIZED_LINK = new RegExp('@@(https?://[^>@]*)@@')
exports.PARENTHESIS_LINK = new RegExp('\\(https?://')

exports.QUOT_PATTERN = new RegExp('^>+ ?')
exports.NO_QUOT_LINE = new RegExp('^[^>].*[\S].*')

exports.SPLITTER_PATTERNS = [
  exports.ORIGINAL_MESSAGE,
  exports.DATE_PERSON,
  exports.ON_DATE_SMB_WROTE,
  exports.ON_DATE_WROTE_SMB,
  exports.FROM_COLON_OR_DATE_COLON,
  exports.SPELLED_OUT_DATE
]

exports.BEGIN_FROM_OR_DATE = new RegExp('^From:|^Date')
