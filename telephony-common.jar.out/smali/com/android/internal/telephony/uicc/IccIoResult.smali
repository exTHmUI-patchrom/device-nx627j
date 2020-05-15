.class public Lcom/android/internal/telephony/uicc/IccIoResult;
.super Ljava/lang/Object;
.source "IccIoResult.java"


# static fields
.field private static final UNKNOWN_ERROR:Ljava/lang/String; = "unknown"


# instance fields
.field public payload:[B

.field public sw1:I

.field public sw2:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1
    .param p1, "sw1"    # I
    .param p2, "sw2"    # I
    .param p3, "hexString"    # Ljava/lang/String;

    .line 185
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    .line 186
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 0
    .param p1, "sw1"    # I
    .param p2, "sw2"    # I
    .param p3, "payload"    # [B

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    .line 180
    iput p2, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    .line 181
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    .line 182
    return-void
.end method

.method private getErrorString()Ljava/lang/String;
    .locals 6

    .line 35
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v1, 0x98

    const/16 v2, 0x40

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eq v0, v1, :cond_11

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_3

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_0

    .line 167
    :pswitch_0
    return-object v1

    .line 166
    :pswitch_1
    return-object v1

    .line 137
    :pswitch_2
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz v0, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v5, :cond_1

    if-eq v0, v3, :cond_0

    .line 143
    goto/16 :goto_0

    .line 141
    :cond_0
    const-string v0, "file is inconsistent with the command"

    return-object v0

    .line 140
    :cond_1
    const-string v0, "file ID not found/pattern not found"

    return-object v0

    .line 139
    :cond_2
    const-string v0, "out f range (invalid address)"

    return-object v0

    .line 138
    :cond_3
    const-string v0, "no EF selected"

    return-object v0

    .line 130
    :pswitch_3
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz v0, :cond_4

    .line 135
    goto/16 :goto_0

    .line 132
    :cond_4
    const-string v0, "SIM Application Toolkit is busy. Command cannot be executed at present, further normal commands are allowed."

    return-object v0

    .line 122
    :pswitch_4
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    shr-int/2addr v0, v5

    if-nez v0, :cond_5

    .line 123
    const-string v0, "command successful but after using an internal update retry routine"

    return-object v0

    .line 125
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eq v0, v2, :cond_6

    .line 128
    goto/16 :goto_0

    .line 126
    :cond_6
    const-string v0, "memory problem"

    return-object v0

    .line 119
    :pswitch_5
    return-object v1

    .line 118
    :pswitch_6
    return-object v1

    .line 81
    :pswitch_7
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz v0, :cond_7

    .line 83
    const-string v0, "The interpretation of this status word is command dependent"

    return-object v0

    .line 82
    :cond_7
    const-string v0, "technical problem with no diagnostic given"

    return-object v0

    .line 79
    :pswitch_8
    const-string v0, "wrong instruction class given in the command"

    return-object v0

    .line 78
    :pswitch_9
    const-string v0, "unknown instruction code given in the command"

    return-object v0

    .line 77
    :pswitch_a
    const-string v0, "incorrect parameter P1 or P2"

    return-object v0

    .line 107
    :pswitch_b
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    packed-switch v0, :pswitch_data_5

    .line 117
    :pswitch_c
    goto/16 :goto_0

    .line 115
    :pswitch_d
    const-string v0, "Referenced data not found"

    return-object v0

    .line 114
    :pswitch_e
    const-string v0, "Lc inconsistent with P1 to P2"

    return-object v0

    .line 113
    :pswitch_f
    const-string v0, "Incorrect parameters P1 to P2"

    return-object v0

    .line 112
    :pswitch_10
    const-string v0, "Not enough memory space"

    return-object v0

    .line 111
    :pswitch_11
    const-string v0, "Record not found"

    return-object v0

    .line 110
    :pswitch_12
    const-string v0, "File not found"

    return-object v0

    .line 109
    :pswitch_13
    const-string v0, "Function not supported"

    return-object v0

    .line 108
    :pswitch_14
    const-string v0, "Incorrect parameters in the data field"

    return-object v0

    .line 94
    :pswitch_15
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz v0, :cond_9

    const/16 v1, 0x89

    if-eq v0, v1, :cond_8

    packed-switch v0, :pswitch_data_6

    .line 105
    goto/16 :goto_0

    .line 101
    :pswitch_16
    const-string v0, "Command not allowed (no EF selected)"

    return-object v0

    .line 100
    :pswitch_17
    const-string v0, "Conditions of use not satisfied"

    return-object v0

    .line 99
    :pswitch_18
    const-string v0, "Referenced data invalidated"

    return-object v0

    .line 98
    :pswitch_19
    const-string v0, "Authentication/PIN method blocked"

    return-object v0

    .line 97
    :pswitch_1a
    const-string v0, "Security status not satisfied"

    return-object v0

    .line 96
    :pswitch_1b
    const-string v0, "Command incompatible with file structure"

    return-object v0

    .line 102
    :cond_8
    const-string v0, "Command not allowed - secure channel - security not satisfied"

    return-object v0

    .line 95
    :cond_9
    const-string v0, "No information given"

    return-object v0

    .line 87
    :pswitch_1c
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz v0, :cond_a

    packed-switch v0, :pswitch_data_7

    .line 92
    goto/16 :goto_0

    .line 90
    :pswitch_1d
    const-string v0, "Secure messaging not supported"

    return-object v0

    .line 89
    :pswitch_1e
    const-string v0, "Logical channel not supported"

    return-object v0

    .line 88
    :cond_a
    const-string v0, "No information given"

    return-object v0

    .line 72
    :pswitch_1f
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz v0, :cond_b

    .line 74
    const-string v0, "The interpretation of this status word is command dependent"

    return-object v0

    .line 73
    :cond_b
    const-string v0, "incorrect parameter P3"

    return-object v0

    .line 66
    :pswitch_20
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz v0, :cond_d

    const/16 v1, 0x81

    if-eq v0, v1, :cond_c

    .line 70
    goto :goto_0

    .line 68
    :cond_c
    const-string v0, "Memory problem"

    return-object v0

    .line 67
    :cond_d
    const-string v0, "No information given, state of non-volatile memory changed"

    return-object v0

    .line 60
    :pswitch_21
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz v0, :cond_e

    .line 64
    goto :goto_0

    .line 61
    :cond_e
    const-string v0, "No information given, state of non-volatile memory unchanged"

    return-object v0

    .line 50
    :pswitch_22
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    shr-int/2addr v0, v5

    const/16 v1, 0xc

    if-ne v0, v1, :cond_f

    .line 51
    const-string v0, "Command successful but after using an internalupdate retry routine but Verification failed"

    return-object v0

    .line 54
    :cond_f
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    packed-switch v0, :pswitch_data_8

    .line 58
    goto :goto_0

    .line 56
    :pswitch_23
    const-string v0, "More data expected and proactive command pending"

    return-object v0

    .line 55
    :pswitch_24
    const-string v0, "More data expected"

    return-object v0

    .line 37
    :pswitch_25
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz v0, :cond_10

    packed-switch v0, :pswitch_data_9

    packed-switch v0, :pswitch_data_a

    .line 48
    goto :goto_0

    .line 46
    :pswitch_26
    const-string v0, "Response data available"

    return-object v0

    .line 45
    :pswitch_27
    const-string v0, "More data available and proactive command pending"

    return-object v0

    .line 44
    :pswitch_28
    const-string v0, "More data available"

    return-object v0

    .line 43
    :pswitch_29
    const-string v0, "Selected file in termination state"

    return-object v0

    .line 42
    :pswitch_2a
    const-string v0, "Selected file invalidated"

    return-object v0

    .line 41
    :pswitch_2b
    const-string v0, "End of file/record reached before reading Le bytes"

    return-object v0

    .line 40
    :pswitch_2c
    const-string v0, "Part of returned data may be corrupted"

    return-object v0

    .line 38
    :cond_10
    const-string v0, "No information given, state of non volatile memory unchanged"

    return-object v0

    .line 145
    :cond_11
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eq v0, v4, :cond_18

    if-eq v0, v5, :cond_17

    if-eq v0, v3, :cond_16

    const/16 v1, 0x10

    if-eq v0, v1, :cond_15

    if-eq v0, v2, :cond_14

    const/16 v1, 0x50

    if-eq v0, v1, :cond_13

    const/16 v1, 0x62

    if-eq v0, v1, :cond_12

    packed-switch v0, :pswitch_data_b

    .line 165
    nop

    .line 169
    :goto_0
    const-string v0, "unknown"

    return-object v0

    .line 163
    :pswitch_2d
    const-string v0, "authentication error, no memory space available in EF_MUK"

    return-object v0

    .line 162
    :pswitch_2e
    const-string v0, "authentication error, no memory space available"

    return-object v0

    .line 161
    :pswitch_2f
    const-string v0, "key freshness failure"

    return-object v0

    .line 160
    :pswitch_30
    const-string v0, "authentication error, security context not supported"

    return-object v0

    .line 159
    :cond_12
    const-string v0, "authentication error, application specific"

    return-object v0

    .line 157
    :cond_13
    const-string v0, "increase cannot be performed, Max value reached"

    return-object v0

    .line 153
    :cond_14
    const-string v0, "unsuccessful CHV verification, no attempt left/unsuccessful UNBLOCK CHV verification, no attempt left/CHV blockedUNBLOCK CHV blocked"

    return-object v0

    .line 152
    :cond_15
    const-string v0, "in contradiction with invalidation status"

    return-object v0

    .line 151
    :cond_16
    const-string v0, "in contradiction with CHV status"

    return-object v0

    .line 147
    :cond_17
    const-string v0, "access condition not fulfilled/unsuccessful CHV verification, at least one attempt left/unsuccessful UNBLOCK CHV verification, at least one attempt left/authentication failed"

    return-object v0

    .line 146
    :cond_18
    const-string v0, "no CHV initialized"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x62
        :pswitch_25
        :pswitch_22
        :pswitch_21
        :pswitch_20
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_1f
        :pswitch_1c
        :pswitch_15
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6d
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x90
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x9e
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x80
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_c
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x81
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x81
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xf1
        :pswitch_24
        :pswitch_23
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x81
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
    .end packed-switch

    :pswitch_data_a
    .packed-switch 0xf1
        :pswitch_28
        :pswitch_27
        :pswitch_26
    .end packed-switch

    :pswitch_data_b
    .packed-switch 0x64
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
    .end packed-switch
.end method


# virtual methods
.method public getException()Lcom/android/internal/telephony/uicc/IccException;
    .locals 3

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccIoResult;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 211
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v1, 0x94

    if-eq v0, v1, :cond_1

    .line 219
    new-instance v0, Lcom/android/internal/telephony/uicc/IccException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sw1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sw2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 213
    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    .line 214
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    return-object v0

    .line 216
    :cond_2
    new-instance v0, Lcom/android/internal/telephony/uicc/IccFileNotFound;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccFileNotFound;-><init>()V

    return-object v0
.end method

.method public success()Z
    .locals 2

    .line 202
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v1, 0x90

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v1, 0x91

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v1, 0x9e

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v1, 0x9f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IccIoResult sw1:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sw2:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    .line 191
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Payload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    goto :goto_0

    :cond_0
    const-string v1, "*******"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccIoResult;->success()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccIoResult;->getErrorString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-string v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    return-object v0
.end method
