.class public Lcom/android/internal/telephony/cdma/SignalToneUtil;
.super Ljava/lang/Object;
.source "SignalToneUtil.java"


# static fields
.field public static final CDMA_INVALID_TONE:I = -0x1

.field public static final IS95_CONST_IR_ALERT_HIGH:I = 0x1

.field public static final IS95_CONST_IR_ALERT_LOW:I = 0x2

.field public static final IS95_CONST_IR_ALERT_MED:I = 0x0

.field public static final IS95_CONST_IR_SIGNAL_IS54B:I = 0x2

.field public static final IS95_CONST_IR_SIGNAL_ISDN:I = 0x1

.field public static final IS95_CONST_IR_SIGNAL_TONE:I = 0x0

.field public static final IS95_CONST_IR_SIGNAL_USR_DEFD_ALERT:I = 0x4

.field public static final IS95_CONST_IR_SIG_IS54B_L:I = 0x1

.field public static final IS95_CONST_IR_SIG_IS54B_NO_TONE:I = 0x0

.field public static final IS95_CONST_IR_SIG_IS54B_PBX_L:I = 0x7

.field public static final IS95_CONST_IR_SIG_IS54B_PBX_SLS:I = 0xa

.field public static final IS95_CONST_IR_SIG_IS54B_PBX_SS:I = 0x8

.field public static final IS95_CONST_IR_SIG_IS54B_PBX_SSL:I = 0x9

.field public static final IS95_CONST_IR_SIG_IS54B_PBX_S_X4:I = 0xb

.field public static final IS95_CONST_IR_SIG_IS54B_SLS:I = 0x5

.field public static final IS95_CONST_IR_SIG_IS54B_SS:I = 0x2

.field public static final IS95_CONST_IR_SIG_IS54B_SSL:I = 0x3

.field public static final IS95_CONST_IR_SIG_IS54B_SS_2:I = 0x4

.field public static final IS95_CONST_IR_SIG_IS54B_S_X4:I = 0x6

.field public static final IS95_CONST_IR_SIG_ISDN_INTGRP:I = 0x1

.field public static final IS95_CONST_IR_SIG_ISDN_NORMAL:I = 0x0

.field public static final IS95_CONST_IR_SIG_ISDN_OFF:I = 0xf

.field public static final IS95_CONST_IR_SIG_ISDN_PAT_3:I = 0x3

.field public static final IS95_CONST_IR_SIG_ISDN_PAT_5:I = 0x5

.field public static final IS95_CONST_IR_SIG_ISDN_PAT_6:I = 0x6

.field public static final IS95_CONST_IR_SIG_ISDN_PAT_7:I = 0x7

.field public static final IS95_CONST_IR_SIG_ISDN_PING:I = 0x4

.field public static final IS95_CONST_IR_SIG_ISDN_SP_PRI:I = 0x2

.field public static final IS95_CONST_IR_SIG_TONE_ABBR_ALRT:I = 0x0

.field public static final IS95_CONST_IR_SIG_TONE_ABB_INT:I = 0x3

.field public static final IS95_CONST_IR_SIG_TONE_ABB_RE:I = 0x5

.field public static final IS95_CONST_IR_SIG_TONE_ANSWER:I = 0x8

.field public static final IS95_CONST_IR_SIG_TONE_BUSY:I = 0x6

.field public static final IS95_CONST_IR_SIG_TONE_CALL_W:I = 0x9

.field public static final IS95_CONST_IR_SIG_TONE_CONFIRM:I = 0x7

.field public static final IS95_CONST_IR_SIG_TONE_DIAL:I = 0x0

.field public static final IS95_CONST_IR_SIG_TONE_INT:I = 0x2

.field public static final IS95_CONST_IR_SIG_TONE_NO_TONE:I = 0x3f

.field public static final IS95_CONST_IR_SIG_TONE_PIP:I = 0xa

.field public static final IS95_CONST_IR_SIG_TONE_REORDER:I = 0x4

.field public static final IS95_CONST_IR_SIG_TONE_RING:I = 0x1

.field public static final TAPIAMSSCDMA_SIGNAL_PITCH_UNKNOWN:I

.field private static mHm:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 80
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    .line 110
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v3

    .line 111
    const/16 v4, 0x2d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 110
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v1, v2, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v3

    .line 115
    const/16 v4, 0x2e

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 113
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 118
    const/16 v5, 0x2f

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 117
    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v1, v2, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v5

    .line 121
    const/16 v6, 0x30

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 120
    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-static {v1, v2, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v6

    .line 124
    const/16 v7, 0x31

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 123
    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/4 v6, 0x5

    invoke-static {v1, v2, v6}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v7

    .line 127
    const/16 v8, 0x32

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 126
    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/4 v7, 0x6

    invoke-static {v1, v2, v7}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v8

    .line 130
    const/16 v9, 0x33

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 129
    invoke-virtual {v0, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/4 v8, 0x7

    invoke-static {v1, v2, v8}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    .line 133
    const/16 v10, 0x34

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 132
    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/16 v9, 0xf

    invoke-static {v1, v2, v9}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    .line 136
    const/16 v10, 0x62

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 135
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v2, v2, v2}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    .line 141
    const/16 v11, 0x22

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 140
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v2, v2, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    .line 144
    const/16 v11, 0x23

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 143
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v2, v2, v3}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    .line 147
    const/16 v11, 0x1d

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 146
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v2, v2, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    .line 150
    const/16 v11, 0x1e

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 149
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v2, v2, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    .line 153
    const/16 v11, 0x26

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 152
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v2, v2, v6}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    .line 156
    const/16 v11, 0x27

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 155
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v2, v2, v7}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    .line 159
    const/16 v11, 0x28

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 158
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v2, v2, v8}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v9

    .line 162
    const/16 v11, 0x20

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 161
    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/16 v9, 0x8

    invoke-static {v2, v2, v9}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v11

    .line 165
    const/16 v12, 0x2a

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 164
    invoke-virtual {v0, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/16 v11, 0x9

    invoke-static {v2, v2, v11}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v12

    .line 168
    const/16 v13, 0x2b

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 167
    invoke-virtual {v0, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/16 v12, 0xa

    invoke-static {v2, v2, v12}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v13

    .line 171
    const/16 v14, 0x2c

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 170
    invoke-virtual {v0, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/16 v13, 0x3f

    invoke-static {v2, v2, v13}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v14

    .line 174
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 173
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v14

    .line 178
    const/16 v15, 0x35

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 177
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v14

    .line 181
    const/16 v15, 0x36

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 180
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v1}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v14

    .line 184
    const/16 v15, 0x37

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 183
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v3}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v14

    .line 187
    const/16 v15, 0x38

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 186
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v3}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v14

    .line 190
    const/16 v15, 0x39

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 189
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v3}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v14

    .line 193
    const/16 v15, 0x3a

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 192
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v14

    .line 196
    const/16 v15, 0x3b

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 195
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v14

    .line 199
    const/16 v15, 0x3c

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 198
    invoke-virtual {v0, v14, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 202
    const/16 v14, 0x3d

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 201
    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 205
    const/16 v14, 0x3e

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 204
    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 208
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 207
    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v5}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 211
    const/16 v14, 0x40

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 210
    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v6}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 214
    const/16 v14, 0x41

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 213
    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v6}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 217
    const/16 v14, 0x42

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 216
    invoke-virtual {v0, v4, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v6}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 220
    const/16 v6, 0x43

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 219
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v7}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 223
    const/16 v6, 0x44

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 222
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v7}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 226
    const/16 v6, 0x45

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 225
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v7}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 229
    const/16 v6, 0x46

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 228
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v8}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 232
    const/16 v6, 0x47

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 231
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v8}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 235
    const/16 v6, 0x48

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 234
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v8}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 238
    const/16 v6, 0x49

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 237
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v9}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 241
    const/16 v6, 0x4a

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 240
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v9}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 244
    const/16 v6, 0x4b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 243
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v9}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 247
    const/16 v6, 0x4c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 246
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v11}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 250
    const/16 v6, 0x4d

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 249
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v11}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 253
    const/16 v6, 0x4e

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 252
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v11}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 256
    const/16 v6, 0x4f

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 255
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v1, v12}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 259
    const/16 v6, 0x50

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 258
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v12}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 262
    const/16 v6, 0x51

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 261
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v12}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v4

    .line 265
    const/16 v6, 0x52

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 264
    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    const/16 v4, 0xb

    invoke-static {v3, v1, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    .line 268
    const/16 v6, 0x53

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 267
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    .line 271
    const/16 v6, 0x54

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 270
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v3, v4}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    .line 274
    const/16 v4, 0x55

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 273
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v3, v2, v2}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    .line 277
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 276
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v5, v2, v2}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    .line 281
    const/16 v3, 0x61

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 279
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {v5, v2, v13}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    .line 285
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 283
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    return-void
.end method

.method public static getAudioToneFromSignalInfo(III)I
    .locals 2
    .param p0, "signalType"    # I
    .param p1, "alertPitch"    # I
    .param p2, "signal"    # I

    .line 100
    sget-object v0, Lcom/android/internal/telephony/cdma/SignalToneUtil;->mHm:Ljava/util/HashMap;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SignalToneUtil;->signalParamHash(III)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 101
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 102
    const/4 v1, -0x1

    return v1

    .line 104
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private static signalParamHash(III)Ljava/lang/Integer;
    .locals 3
    .param p0, "signalType"    # I
    .param p1, "alertPitch"    # I
    .param p2, "signal"    # I

    .line 83
    if-ltz p0, :cond_2

    const/16 v0, 0x100

    if-gt p0, v0, :cond_2

    if-gt p1, v0, :cond_2

    if-ltz p1, :cond_2

    if-gt p2, v0, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    .line 94
    const/4 p1, 0x0

    .line 96
    :cond_1
    new-instance v1, Ljava/lang/Integer;

    mul-int/lit16 v2, p0, 0x100

    mul-int/2addr v2, v0

    mul-int/lit16 v0, p1, 0x100

    add-int/2addr v2, v0

    add-int/2addr v2, p2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    return-object v1

    .line 85
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    return-object v0
.end method
