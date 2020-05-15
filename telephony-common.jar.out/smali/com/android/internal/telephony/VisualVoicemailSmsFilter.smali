.class public Lcom/android/internal/telephony/VisualVoicemailSmsFilter;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;,
        Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;
    }
.end annotation


# static fields
.field private static final DEFAULT_PHONE_ACCOUNT_HANDLE_CONVERTER:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

.field private static final PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

.field private static final TAG:Ljava/lang/String; = "VvmSmsFilter"

.field private static final TELEPHONY_SERVICE_PACKAGE:Ljava/lang/String; = "com.android.phone"

.field private static sPatterns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/regex/Pattern;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 68
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.services.telephony.TelephonyConnectionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->DEFAULT_PHONE_ACCOUNT_HANDLE_CONVERTER:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    .line 91
    sget-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->DEFAULT_PHONE_ACCOUNT_HANDLE_CONVERTER:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/content/ComponentName;
    .locals 1

    .line 50
    sget-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->PSTN_CONNECTION_SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method private static buildPatternsMap(Landroid/content/Context;)V
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .line 218
    sget-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 219
    return-void

    .line 221
    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070059

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 223
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 225
    .local v4, "entry":Ljava/lang/String;
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v2

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "mccMncList":[Ljava/lang/String;
    const-string v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 228
    .local v6, "pattern":Ljava/util/regex/Pattern;
    array-length v7, v5

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_2

    aget-object v9, v5, v8

    .line 229
    .local v9, "mccMnc":Ljava/lang/String;
    sget-object v10, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 230
    sget-object v10, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_1
    sget-object v10, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    .end local v9    # "mccMnc":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 223
    .end local v4    # "entry":Ljava/lang/String;
    .end local v5    # "mccMncList":[Ljava/lang/String;
    .end local v6    # "pattern":Ljava/util/regex/Pattern;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    :cond_3
    return-void
.end method

.method public static filter(Landroid/content/Context;[[BLjava/lang/String;II)Z
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "subId"    # I

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 120
    move/from16 v2, p4

    const-string v3, "phone"

    .line 121
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 124
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getActiveVisualVoicemailSmsFilterSettings(I)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v4

    .line 126
    .local v4, "settings":Landroid/telephony/VisualVoicemailSmsFilterSettings;
    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 127
    return v5

    .line 130
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    invoke-interface {v6, v2}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;->fromSubId(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v6

    .line 132
    .local v6, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    if-nez v6, :cond_1

    .line 133
    const-string v7, "VvmSmsFilter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to convert subId "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " to PhoneAccountHandle"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    return v5

    .line 137
    :cond_1
    invoke-static/range {p1 .. p2}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->getFullMessage([[BLjava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;

    move-result-object v7

    .line 139
    .local v7, "fullMessage":Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;
    const/4 v8, 0x0

    if-nez v7, :cond_3

    .line 142
    const-string v9, "VvmSmsFilter"

    const-string v10, "Unparsable SMS received"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->parseAsciiPduMessage([[B)Ljava/lang/String;

    move-result-object v9

    .line 144
    .local v9, "asciiMessage":Ljava/lang/String;
    nop

    .line 145
    invoke-static {v9}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parseAlternativeFormat(Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    move-result-object v10

    .line 146
    .local v10, "messageData":Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    if-eqz v10, :cond_2

    .line 147
    invoke-static {v0, v4, v6, v10, v8}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sendVvmSmsBroadcast(Landroid/content/Context;Landroid/telephony/VisualVoicemailSmsFilterSettings;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V

    .line 151
    :cond_2
    return v5

    .line 154
    .end local v9    # "asciiMessage":Ljava/lang/String;
    .end local v10    # "messageData":Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    :cond_3
    iget-object v9, v7, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->fullMessageBody:Ljava/lang/String;

    .line 155
    .local v9, "messageBody":Ljava/lang/String;
    iget-object v10, v4, Landroid/telephony/VisualVoicemailSmsFilterSettings;->clientPrefix:Ljava/lang/String;

    .line 156
    .local v10, "clientPrefix":Ljava/lang/String;
    nop

    .line 157
    invoke-static {v10, v9}, Lcom/android/internal/telephony/VisualVoicemailSmsParser;->parse(Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;

    move-result-object v11

    .line 158
    .local v11, "messageData":Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    const/4 v12, 0x1

    if-eqz v11, :cond_7

    .line 159
    iget v13, v4, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    const/4 v14, -0x2

    const/4 v15, -0x1

    if-ne v13, v14, :cond_4

    .line 161
    if-ne v1, v15, :cond_5

    .line 163
    const-string v8, "VvmSmsFilter"

    const-string v12, "SMS matching VVM format received but is not a DATA SMS"

    invoke-static {v8, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    return v5

    .line 166
    :cond_4
    iget v13, v4, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    if-eq v13, v15, :cond_5

    .line 168
    iget v13, v4, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    if-eq v13, v1, :cond_5

    .line 169
    const-string v8, "VvmSmsFilter"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SMS matching VVM format received but is not directed to port "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v4, Landroid/telephony/VisualVoicemailSmsFilterSettings;->destinationPort:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return v5

    .line 175
    :cond_5
    iget-object v13, v4, Landroid/telephony/VisualVoicemailSmsFilterSettings;->originatingNumbers:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    iget-object v13, v7, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->firstMessage:Landroid/telephony/SmsMessage;

    iget-object v14, v4, Landroid/telephony/VisualVoicemailSmsFilterSettings;->originatingNumbers:Ljava/util/List;

    .line 176
    invoke-static {v13, v14}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->isSmsFromNumbers(Landroid/telephony/SmsMessage;Ljava/util/List;)Z

    move-result v13

    if-nez v13, :cond_6

    .line 177
    const-string v8, "VvmSmsFilter"

    const-string v12, "SMS matching VVM format received but is not from originating numbers"

    invoke-static {v8, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return v5

    .line 181
    :cond_6
    invoke-static {v0, v4, v6, v11, v8}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sendVvmSmsBroadcast(Landroid/content/Context;Landroid/telephony/VisualVoicemailSmsFilterSettings;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V

    .line 182
    return v12

    .line 185
    :cond_7
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->buildPatternsMap(Landroid/content/Context;)V

    .line 186
    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v13

    .line 188
    .local v13, "mccMnc":Ljava/lang/String;
    sget-object v14, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPatterns:Ljava/util/Map;

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 189
    .local v14, "patterns":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    if-eqz v14, :cond_b

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_8

    goto :goto_1

    .line 193
    :cond_8
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Ljava/util/regex/Pattern;

    .line 194
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 195
    const-string v12, "VvmSmsFilter"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Incoming SMS matches pattern "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " but has illegal format, still dropping as VVM SMS"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v8, 0x0

    invoke-static {v0, v4, v6, v8, v9}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sendVvmSmsBroadcast(Landroid/content/Context;Landroid/telephony/VisualVoicemailSmsFilterSettings;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V

    .line 198
    const/4 v12, 0x1

    return v12

    .line 200
    .end local v5    # "pattern":Ljava/util/regex/Pattern;
    :cond_9
    const/4 v12, 0x1

    .line 193
    const/4 v5, 0x0

    goto :goto_0

    .line 201
    :cond_a
    const/4 v5, 0x0

    return v5

    .line 190
    :cond_b
    :goto_1
    return v5
.end method

.method private static getFullMessage([[BLjava/lang/String;)Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;
    .locals 11
    .param p0, "pdus"    # [[B
    .param p1, "format"    # Ljava/lang/String;

    .line 262
    new-instance v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;-><init>(Lcom/android/internal/telephony/VisualVoicemailSmsFilter$1;)V

    .line 263
    .local v0, "result":Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v2, "builder":Ljava/lang/StringBuilder;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v3

    .line 265
    .local v3, "decoder":Ljava/nio/charset/CharsetDecoder;
    array-length v4, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, p0, v5

    .line 266
    .local v6, "pdu":[B
    invoke-static {v6, p1}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v7

    .line 267
    .local v7, "message":Landroid/telephony/SmsMessage;
    if-nez v7, :cond_0

    .line 269
    return-object v1

    .line 271
    :cond_0
    iget-object v8, v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->firstMessage:Landroid/telephony/SmsMessage;

    if-nez v8, :cond_1

    .line 272
    iput-object v7, v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->firstMessage:Landroid/telephony/SmsMessage;

    .line 274
    :cond_1
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    .line 275
    .local v8, "body":Ljava/lang/String;
    if-nez v8, :cond_2

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v9

    if-eqz v9, :cond_2

    .line 280
    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v9

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 282
    .local v9, "byteBuffer":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v3, v9}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v10

    .line 286
    goto :goto_1

    .line 283
    :catch_0
    move-exception v4

    .line 285
    .local v4, "e":Ljava/nio/charset/CharacterCodingException;
    return-object v1

    .line 288
    .end local v4    # "e":Ljava/nio/charset/CharacterCodingException;
    .end local v9    # "byteBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    .line 289
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    .end local v6    # "pdu":[B
    .end local v7    # "message":Landroid/telephony/SmsMessage;
    .end local v8    # "body":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 292
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter$FullMessage;->fullMessageBody:Ljava/lang/String;

    .line 293
    return-object v0
.end method

.method private static isSmsFromNumbers(Landroid/telephony/SmsMessage;Ljava/util/List;)Z
    .locals 4
    .param p0, "message"    # Landroid/telephony/SmsMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telephony/SmsMessage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 305
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 306
    const-string v1, "VvmSmsFilter"

    const-string v2, "Unable to create SmsMessage from PDU, cannot determine originating number"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    return v0

    .line 310
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 311
    .local v2, "number":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 312
    const/4 v0, 0x1

    return v0

    .line 314
    .end local v2    # "number":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 315
    :cond_2
    return v0
.end method

.method private static parseAsciiPduMessage([[B)Ljava/lang/String;
    .locals 6
    .param p0, "pdus"    # [[B

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 299
    .local v3, "pdu":[B
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .end local v3    # "pdu":[B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static sendVvmSmsBroadcast(Landroid/content/Context;Landroid/telephony/VisualVoicemailSmsFilterSettings;Landroid/telecom/PhoneAccountHandle;Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filterSettings"    # Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .param p2, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p3, "messageData"    # Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;
    .param p4, "messageBody"    # Ljava/lang/String;

    .line 240
    const-string v0, "VvmSmsFilter"

    const-string v1, "VVM SMS received"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.provider.action.VOICEMAIL_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/telephony/VisualVoicemailSms$Builder;

    invoke-direct {v1}, Landroid/telephony/VisualVoicemailSms$Builder;-><init>()V

    .line 243
    .local v1, "builder":Landroid/telephony/VisualVoicemailSms$Builder;
    if-eqz p3, :cond_0

    .line 244
    iget-object v2, p3, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/telephony/VisualVoicemailSms$Builder;->setPrefix(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSms$Builder;

    .line 245
    iget-object v2, p3, Lcom/android/internal/telephony/VisualVoicemailSmsParser$WrappedMessageData;->fields:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/telephony/VisualVoicemailSms$Builder;->setFields(Landroid/os/Bundle;)Landroid/telephony/VisualVoicemailSms$Builder;

    .line 247
    :cond_0
    if-eqz p4, :cond_1

    .line 248
    invoke-virtual {v1, p4}, Landroid/telephony/VisualVoicemailSms$Builder;->setMessageBody(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSms$Builder;

    .line 250
    :cond_1
    invoke-virtual {v1, p2}, Landroid/telephony/VisualVoicemailSms$Builder;->setPhoneAccountHandle(Landroid/telecom/PhoneAccountHandle;)Landroid/telephony/VisualVoicemailSms$Builder;

    .line 251
    const-string v2, "android.provider.extra.VOICEMAIL_SMS"

    invoke-virtual {v1}, Landroid/telephony/VisualVoicemailSms$Builder;->build()Landroid/telephony/VisualVoicemailSms;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 252
    const-string v2, "android.provider.extra.TARGET_PACAKGE"

    iget-object v3, p1, Landroid/telephony/VisualVoicemailSmsFilterSettings;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    const-string v2, "com.android.phone"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    return-void
.end method

.method public static setPhoneAccountHandleConverterForTest(Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;)V
    .locals 1
    .param p0, "converter"    # Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 210
    if-nez p0, :cond_0

    .line 211
    sget-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->DEFAULT_PHONE_ACCOUNT_HANDLE_CONVERTER:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    sput-object v0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    goto :goto_0

    .line 213
    :cond_0
    sput-object p0, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->sPhoneAccountHandleConverter:Lcom/android/internal/telephony/VisualVoicemailSmsFilter$PhoneAccountHandleConverter;

    .line 215
    :goto_0
    return-void
.end method
