.class Lcom/android/server/wifi/ScoringParams$Values;
.super Ljava/lang/Object;
.source "ScoringParams.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/ScoringParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation


# static fields
.field public static final KEY_EXPID:Ljava/lang/String; = "expid"

.field public static final KEY_HORIZON:Ljava/lang/String; = "horizon"

.field public static final KEY_NUD:Ljava/lang/String; = "nud"

.field public static final KEY_PPS:Ljava/lang/String; = "pps"

.field public static final KEY_RSSI2:Ljava/lang/String; = "rssi2"

.field public static final KEY_RSSI5:Ljava/lang/String; = "rssi5"

.field public static final MAX_EXPID:I = 0x7fffffff

.field public static final MAX_HORIZON:I = 0x3c

.field public static final MAX_NUD:I = 0xa

.field public static final MIN_EXPID:I = 0x0

.field public static final MIN_HORIZON:I = -0x9

.field public static final MIN_NUD:I


# instance fields
.field public expid:I

.field public horizon:I

.field public nud:I

.field public final pps:[I

.field public final rssi2:[I

.field public final rssi5:[I

.field final synthetic this$0:Lcom/android/server/wifi/ScoringParams;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ScoringParams;)V
    .locals 1

    .line 79
    iput-object p1, p0, Lcom/android/server/wifi/ScoringParams$Values;->this$0:Lcom/android/server/wifi/ScoringParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 p1, 0x4

    new-array v0, p1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/wifi/ScoringParams$Values;->rssi2:[I

    .line 55
    new-array p1, p1, [I

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/server/wifi/ScoringParams$Values;->rssi5:[I

    .line 59
    const/4 p1, 0x3

    new-array p1, p1, [I

    fill-array-data p1, :array_2

    iput-object p1, p0, Lcom/android/server/wifi/ScoringParams$Values;->pps:[I

    .line 65
    const/16 p1, 0xf

    iput p1, p0, Lcom/android/server/wifi/ScoringParams$Values;->horizon:I

    .line 71
    const/16 p1, 0x8

    iput p1, p0, Lcom/android/server/wifi/ScoringParams$Values;->nud:I

    .line 77
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wifi/ScoringParams$Values;->expid:I

    .line 80
    return-void

    :array_0
    .array-data 4
        -0x53
        -0x50
        -0x49
        -0x3c
    .end array-data

    :array_1
    .array-data 4
        -0x50
        -0x4d
        -0x46
        -0x39
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x64
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/wifi/ScoringParams;Lcom/android/server/wifi/ScoringParams$Values;)V
    .locals 3
    .param p2, "source"    # Lcom/android/server/wifi/ScoringParams$Values;

    .line 82
    iput-object p1, p0, Lcom/android/server/wifi/ScoringParams$Values;->this$0:Lcom/android/server/wifi/ScoringParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 p1, 0x4

    new-array v0, p1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/wifi/ScoringParams$Values;->rssi2:[I

    .line 55
    new-array p1, p1, [I

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/android/server/wifi/ScoringParams$Values;->rssi5:[I

    .line 59
    const/4 p1, 0x3

    new-array p1, p1, [I

    fill-array-data p1, :array_2

    iput-object p1, p0, Lcom/android/server/wifi/ScoringParams$Values;->pps:[I

    .line 65
    const/16 p1, 0xf

    iput p1, p0, Lcom/android/server/wifi/ScoringParams$Values;->horizon:I

    .line 71
    const/16 p1, 0x8

    iput p1, p0, Lcom/android/server/wifi/ScoringParams$Values;->nud:I

    .line 77
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/wifi/ScoringParams$Values;->expid:I

    .line 83
    move v0, p1

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wifi/ScoringParams$Values;->rssi2:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/server/wifi/ScoringParams$Values;->rssi2:[I

    iget-object v2, p2, Lcom/android/server/wifi/ScoringParams$Values;->rssi2:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    :cond_0
    move v0, p1

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wifi/ScoringParams$Values;->rssi5:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 87
    iget-object v1, p0, Lcom/android/server/wifi/ScoringParams$Values;->rssi5:[I

    iget-object v2, p2, Lcom/android/server/wifi/ScoringParams$Values;->rssi5:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 89
    .end local v0    # "i":I
    :cond_1
    nop

    .local p1, "i":I
    :goto_2
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams$Values;->pps:[I

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams$Values;->pps:[I

    iget-object v1, p2, Lcom/android/server/wifi/ScoringParams$Values;->pps:[I

    aget v1, v1, p1

    aput v1, v0, p1

    .line 89
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 92
    .end local p1    # "i":I
    :cond_2
    iget p1, p2, Lcom/android/server/wifi/ScoringParams$Values;->horizon:I

    iput p1, p0, Lcom/android/server/wifi/ScoringParams$Values;->horizon:I

    .line 93
    iget p1, p2, Lcom/android/server/wifi/ScoringParams$Values;->nud:I

    iput p1, p0, Lcom/android/server/wifi/ScoringParams$Values;->nud:I

    .line 94
    iget p1, p2, Lcom/android/server/wifi/ScoringParams$Values;->expid:I

    iput p1, p0, Lcom/android/server/wifi/ScoringParams$Values;->expid:I

    .line 95
    return-void

    nop

    :array_0
    .array-data 4
        -0x53
        -0x50
        -0x49
        -0x3c
    .end array-data

    :array_1
    .array-data 4
        -0x50
        -0x4d
        -0x46
        -0x39
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x1
        0x64
    .end array-data
.end method

.method private appendInts(Ljava/lang/StringBuilder;[I)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "a"    # [I

    .line 191
    array-length v0, p2

    .line 192
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 193
    if-lez v1, :cond_0

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_0
    aget v2, p2, v1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private appendKey(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "key"    # Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    return-void
.end method

.method private updateInt(Landroid/util/KeyValueListParser;Ljava/lang/String;I)I
    .locals 3
    .param p1, "parser"    # Landroid/util/KeyValueListParser;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    return p3

    .line 150
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 151
    :catch_0
    move-exception v1

    .line 152
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method private updateIntArray([ILandroid/util/KeyValueListParser;Ljava/lang/String;)V
    .locals 3
    .param p1, "dest"    # [I
    .param p2, "parser"    # Landroid/util/KeyValueListParser;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 158
    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-virtual {p2, p3, v0}, Landroid/util/KeyValueListParser;->getIntArray(Ljava/lang/String;[I)[I

    move-result-object v0

    .line 160
    .local v0, "ints":[I
    if-eqz v0, :cond_3

    .line 161
    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_2

    .line 162
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 163
    aget v2, v0, v1

    aput v2, p1, v1

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v1    # "i":I
    :cond_1
    return-void

    .line 161
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 160
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private validateOrderedNonNegativeArray([I)V
    .locals 3
    .param p1, "a"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "low":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 124
    aget v2, p1, v1

    if-lt v2, v0, :cond_0

    .line 127
    aget v0, p1, v1

    .line 123
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 125
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 129
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private validateRange(III)V
    .locals 1
    .param p1, "k"    # I
    .param p2, "low"    # I
    .param p3, "high"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 116
    if-lt p1, p2, :cond_0

    if-gt p1, p3, :cond_0

    .line 119
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private validateRssiArray([I)V
    .locals 4
    .param p1, "rssi"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 107
    const/16 v0, -0x7e

    .line 108
    .local v0, "low":I
    const/16 v1, 0xc8

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 109
    .local v1, "high":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 110
    aget v3, p1, v2

    invoke-direct {p0, v3, v0, v1}, Lcom/android/server/wifi/ScoringParams$Values;->validateRange(III)V

    .line 111
    aget v0, p1, v2

    .line 109
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v2    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public parseString(Ljava/lang/String;)V
    .locals 4
    .param p1, "kvList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 132
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 133
    .local v0, "parser":Landroid/util/KeyValueListParser;
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Landroid/util/KeyValueListParser;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/server/wifi/ScoringParams$Values;->rssi2:[I

    const-string v2, "rssi2"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/wifi/ScoringParams$Values;->updateIntArray([ILandroid/util/KeyValueListParser;Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/android/server/wifi/ScoringParams$Values;->rssi5:[I

    const-string v2, "rssi5"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/wifi/ScoringParams$Values;->updateIntArray([ILandroid/util/KeyValueListParser;Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/android/server/wifi/ScoringParams$Values;->pps:[I

    const-string v2, "pps"

    invoke-direct {p0, v1, v0, v2}, Lcom/android/server/wifi/ScoringParams$Values;->updateIntArray([ILandroid/util/KeyValueListParser;Ljava/lang/String;)V

    .line 140
    const-string v1, "horizon"

    iget v2, p0, Lcom/android/server/wifi/ScoringParams$Values;->horizon:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wifi/ScoringParams$Values;->updateInt(Landroid/util/KeyValueListParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/ScoringParams$Values;->horizon:I

    .line 141
    const-string v1, "nud"

    iget v2, p0, Lcom/android/server/wifi/ScoringParams$Values;->nud:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wifi/ScoringParams$Values;->updateInt(Landroid/util/KeyValueListParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/ScoringParams$Values;->nud:I

    .line 142
    const-string v1, "expid"

    iget v2, p0, Lcom/android/server/wifi/ScoringParams$Values;->expid:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wifi/ScoringParams$Values;->updateInt(Landroid/util/KeyValueListParser;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/wifi/ScoringParams$Values;->expid:I

    .line 143
    return-void

    .line 135
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "dup keys"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "rssi2"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/ScoringParams$Values;->appendKey(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/android/server/wifi/ScoringParams$Values;->rssi2:[I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/ScoringParams$Values;->appendInts(Ljava/lang/StringBuilder;[I)V

    .line 172
    const-string v1, "rssi5"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/ScoringParams$Values;->appendKey(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/android/server/wifi/ScoringParams$Values;->rssi5:[I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/ScoringParams$Values;->appendInts(Ljava/lang/StringBuilder;[I)V

    .line 174
    const-string v1, "pps"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/ScoringParams$Values;->appendKey(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/android/server/wifi/ScoringParams$Values;->pps:[I

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/ScoringParams$Values;->appendInts(Ljava/lang/StringBuilder;[I)V

    .line 176
    const-string v1, "horizon"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/ScoringParams$Values;->appendKey(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 177
    iget v1, p0, Lcom/android/server/wifi/ScoringParams$Values;->horizon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    const-string v1, "nud"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/ScoringParams$Values;->appendKey(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 179
    iget v1, p0, Lcom/android/server/wifi/ScoringParams$Values;->nud:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, "expid"

    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/ScoringParams$Values;->appendKey(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 181
    iget v1, p0, Lcom/android/server/wifi/ScoringParams$Values;->expid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public validate()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams$Values;->rssi2:[I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/ScoringParams$Values;->validateRssiArray([I)V

    .line 99
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams$Values;->rssi5:[I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/ScoringParams$Values;->validateRssiArray([I)V

    .line 100
    iget-object v0, p0, Lcom/android/server/wifi/ScoringParams$Values;->pps:[I

    invoke-direct {p0, v0}, Lcom/android/server/wifi/ScoringParams$Values;->validateOrderedNonNegativeArray([I)V

    .line 101
    iget v0, p0, Lcom/android/server/wifi/ScoringParams$Values;->horizon:I

    const/16 v1, -0x9

    const/16 v2, 0x3c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wifi/ScoringParams$Values;->validateRange(III)V

    .line 102
    iget v0, p0, Lcom/android/server/wifi/ScoringParams$Values;->nud:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wifi/ScoringParams$Values;->validateRange(III)V

    .line 103
    iget v0, p0, Lcom/android/server/wifi/ScoringParams$Values;->expid:I

    const v2, 0x7fffffff

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wifi/ScoringParams$Values;->validateRange(III)V

    .line 104
    return-void
.end method
