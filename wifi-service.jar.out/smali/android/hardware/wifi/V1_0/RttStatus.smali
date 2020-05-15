.class public final Landroid/hardware/wifi/V1_0/RttStatus;
.super Ljava/lang/Object;
.source "RttStatus.java"


# static fields
.field public static final ABORTED:I = 0x8

.field public static final FAILURE:I = 0x1

.field public static final FAIL_AP_ON_DIFF_CHANNEL:I = 0x6

.field public static final FAIL_BUSY_TRY_LATER:I = 0xc

.field public static final FAIL_FTM_PARAM_OVERRIDE:I = 0xf

.field public static final FAIL_INVALID_TS:I = 0x9

.field public static final FAIL_NOT_SCHEDULED_YET:I = 0x4

.field public static final FAIL_NO_CAPABILITY:I = 0x7

.field public static final FAIL_NO_RSP:I = 0x2

.field public static final FAIL_PROTOCOL:I = 0xa

.field public static final FAIL_REJECTED:I = 0x3

.field public static final FAIL_SCHEDULE:I = 0xb

.field public static final FAIL_TM_TIMEOUT:I = 0x5

.field public static final INVALID_REQ:I = 0xd

.field public static final NO_WIFI:I = 0xe

.field public static final SUCCESS:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4
    .param p0, "o"    # I

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 104
    .local v1, "flipped":I
    const-string v2, "SUCCESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 106
    const-string v2, "FAILURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    or-int/lit8 v1, v1, 0x1

    .line 109
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 110
    const-string v2, "FAIL_NO_RSP"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    or-int/lit8 v1, v1, 0x2

    .line 113
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 114
    const-string v2, "FAIL_REJECTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    or-int/lit8 v1, v1, 0x3

    .line 117
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 118
    const-string v2, "FAIL_NOT_SCHEDULED_YET"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    or-int/lit8 v1, v1, 0x4

    .line 121
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 122
    const-string v2, "FAIL_TM_TIMEOUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    or-int/lit8 v1, v1, 0x5

    .line 125
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 126
    const-string v2, "FAIL_AP_ON_DIFF_CHANNEL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    or-int/lit8 v1, v1, 0x6

    .line 129
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 130
    const-string v2, "FAIL_NO_CAPABILITY"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    or-int/lit8 v1, v1, 0x7

    .line 133
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 134
    const-string v2, "ABORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    or-int/lit8 v1, v1, 0x8

    .line 137
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 138
    const-string v2, "FAIL_INVALID_TS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    or-int/lit8 v1, v1, 0x9

    .line 141
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 142
    const-string v2, "FAIL_PROTOCOL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    or-int/lit8 v1, v1, 0xa

    .line 145
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 146
    const-string v2, "FAIL_SCHEDULE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    or-int/lit8 v1, v1, 0xb

    .line 149
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 150
    const-string v2, "FAIL_BUSY_TRY_LATER"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    or-int/lit8 v1, v1, 0xc

    .line 153
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 154
    const-string v2, "INVALID_REQ"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    or-int/lit8 v1, v1, 0xd

    .line 157
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 158
    const-string v2, "NO_WIFI"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    or-int/lit8 v1, v1, 0xe

    .line 161
    :cond_d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    .line 162
    const-string v2, "FAIL_FTM_PARAM_OVERRIDE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    or-int/lit8 v1, v1, 0xf

    .line 165
    :cond_e
    if-eq p0, v1, :cond_f

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_f
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 50
    if-nez p0, :cond_0

    .line 51
    const-string v0, "SUCCESS"

    return-object v0

    .line 53
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 54
    const-string v0, "FAILURE"

    return-object v0

    .line 56
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 57
    const-string v0, "FAIL_NO_RSP"

    return-object v0

    .line 59
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 60
    const-string v0, "FAIL_REJECTED"

    return-object v0

    .line 62
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 63
    const-string v0, "FAIL_NOT_SCHEDULED_YET"

    return-object v0

    .line 65
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 66
    const-string v0, "FAIL_TM_TIMEOUT"

    return-object v0

    .line 68
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 69
    const-string v0, "FAIL_AP_ON_DIFF_CHANNEL"

    return-object v0

    .line 71
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 72
    const-string v0, "FAIL_NO_CAPABILITY"

    return-object v0

    .line 74
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 75
    const-string v0, "ABORTED"

    return-object v0

    .line 77
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 78
    const-string v0, "FAIL_INVALID_TS"

    return-object v0

    .line 80
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 81
    const-string v0, "FAIL_PROTOCOL"

    return-object v0

    .line 83
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 84
    const-string v0, "FAIL_SCHEDULE"

    return-object v0

    .line 86
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 87
    const-string v0, "FAIL_BUSY_TRY_LATER"

    return-object v0

    .line 89
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 90
    const-string v0, "INVALID_REQ"

    return-object v0

    .line 92
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 93
    const-string v0, "NO_WIFI"

    return-object v0

    .line 95
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 96
    const-string v0, "FAIL_FTM_PARAM_OVERRIDE"

    return-object v0

    .line 98
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
