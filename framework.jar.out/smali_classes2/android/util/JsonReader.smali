.class public final Landroid/util/JsonReader;
.super Ljava/lang/Object;
.source "JsonReader.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static final FALSE:Ljava/lang/String; = "false"

.field private static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private final buffer:[C

.field private bufferStartColumn:I

.field private bufferStartLine:I

.field private final in:Ljava/io/Reader;

.field private lenient:Z

.field private limit:I

.field private name:Ljava/lang/String;

.field private pos:I

.field private skipping:Z

.field private final stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/JsonScope;",
            ">;"
        }
    .end annotation
.end field

.field private final stringPool:Llibcore/internal/StringPool;

.field private token:Landroid/util/JsonToken;

.field private value:Ljava/lang/String;

.field private valueLength:I

.field private valuePos:I


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "in"    # Ljava/io/Reader;

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    new-instance v0, Llibcore/internal/StringPool;

    invoke-direct {v0}, Llibcore/internal/StringPool;-><init>()V

    iput-object v0, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    .line 197
    const/16 v1, 0x400

    new-array v1, v1, [C

    iput-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    .line 198
    iput v0, p0, Landroid/util/JsonReader;->pos:I

    .line 199
    iput v0, p0, Landroid/util/JsonReader;->limit:I

    .line 204
    const/4 v1, 0x1

    iput v1, p0, Landroid/util/JsonReader;->bufferStartLine:I

    .line 205
    iput v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    .line 209
    sget-object v1, Landroid/util/JsonScope;->EMPTY_DOCUMENT:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    .line 230
    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    .line 236
    if-eqz p1, :cond_0

    .line 239
    iput-object p1, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    .line 240
    return-void

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private advance()Landroid/util/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 373
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 375
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 376
    .local v0, "result":Landroid/util/JsonToken;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 377
    iput-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 378
    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    .line 379
    return-object v0
.end method

.method private checkLenient()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 839
    iget-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    if-eqz v0, :cond_0

    .line 842
    return-void

    .line 840
    :cond_0
    const-string v0, "Use JsonReader.setLenient(true) to accept malformed JSON"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private decodeLiteral()Landroid/util/JsonToken;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1071
    iget v0, p0, Landroid/util/JsonReader;->valuePos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1073
    sget-object v0, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v0

    .line 1074
    :cond_0
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    const/16 v1, 0x55

    const/16 v2, 0x75

    const/16 v3, 0x4c

    const/16 v4, 0x6c

    const/4 v5, 0x4

    if-ne v0, v5, :cond_5

    const/16 v0, 0x6e

    iget-object v6, p0, Landroid/util/JsonReader;->buffer:[C

    iget v7, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v6, v6, v7

    if-eq v0, v6, :cond_1

    const/16 v0, 0x4e

    iget-object v6, p0, Landroid/util/JsonReader;->buffer:[C

    iget v7, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v6, v6, v7

    if-ne v0, v6, :cond_5

    :cond_1
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v6, v6, 0x1

    aget-char v0, v0, v6

    if-eq v2, v0, :cond_2

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v6, v6, 0x1

    aget-char v0, v0, v6

    if-ne v1, v0, :cond_5

    :cond_2
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v6, v6, 0x2

    aget-char v0, v0, v6

    if-eq v4, v0, :cond_3

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v6, v6, 0x2

    aget-char v0, v0, v6

    if-ne v3, v0, :cond_5

    :cond_3
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v6, v6, 0x3

    aget-char v0, v0, v6

    if-eq v4, v0, :cond_4

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v6, v6, 0x3

    aget-char v0, v0, v6

    if-ne v3, v0, :cond_5

    .line 1079
    :cond_4
    const-string/jumbo v0, "null"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 1080
    sget-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    return-object v0

    .line 1081
    :cond_5
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    const/16 v6, 0x45

    const/16 v7, 0x65

    if-ne v0, v5, :cond_a

    const/16 v0, 0x74

    iget-object v8, p0, Landroid/util/JsonReader;->buffer:[C

    iget v9, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v8, v8, v9

    if-eq v0, v8, :cond_6

    const/16 v0, 0x54

    iget-object v8, p0, Landroid/util/JsonReader;->buffer:[C

    iget v9, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v8, v8, v9

    if-ne v0, v8, :cond_a

    :cond_6
    const/16 v0, 0x72

    iget-object v8, p0, Landroid/util/JsonReader;->buffer:[C

    iget v9, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v9, v9, 0x1

    aget-char v8, v8, v9

    if-eq v0, v8, :cond_7

    const/16 v0, 0x52

    iget-object v8, p0, Landroid/util/JsonReader;->buffer:[C

    iget v9, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v9, v9, 0x1

    aget-char v8, v8, v9

    if-ne v0, v8, :cond_a

    :cond_7
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v8, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v8, v8, 0x2

    aget-char v0, v0, v8

    if-eq v2, v0, :cond_8

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x2

    aget-char v0, v0, v2

    if-ne v1, v0, :cond_a

    :cond_8
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-eq v7, v0, :cond_9

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x3

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_a

    .line 1086
    :cond_9
    const-string/jumbo v0, "true"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 1087
    sget-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    return-object v0

    .line 1088
    :cond_a
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    const/16 v0, 0x66

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_b

    const/16 v0, 0x46

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_10

    :cond_b
    const/16 v0, 0x61

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_c

    const/16 v0, 0x41

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x1

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_10

    :cond_c
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-eq v4, v0, :cond_d

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v1, v1, 0x2

    aget-char v0, v0, v1

    if-ne v3, v0, :cond_10

    :cond_d
    const/16 v0, 0x73

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-eq v0, v1, :cond_e

    const/16 v0, 0x53

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/lit8 v2, v2, 0x3

    aget-char v1, v1, v2

    if-ne v0, v1, :cond_10

    :cond_e
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/2addr v1, v5

    aget-char v0, v0, v1

    if-eq v7, v0, :cond_f

    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    add-int/2addr v1, v5

    aget-char v0, v0, v1

    if-ne v6, v0, :cond_10

    .line 1094
    :cond_f
    const-string v0, "false"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 1095
    sget-object v0, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    return-object v0

    .line 1097
    :cond_10
    iget-object v0, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->valuePos:I

    iget v3, p0, Landroid/util/JsonReader;->valueLength:I

    invoke-virtual {v0, v1, v2, v3}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 1098
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->valuePos:I

    iget v2, p0, Landroid/util/JsonReader;->valueLength:I

    invoke-direct {p0, v0, v1, v2}, Landroid/util/JsonReader;->decodeNumber([CII)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method private decodeNumber([CII)Landroid/util/JsonToken;
    .locals 6
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 1109
    move v0, p2

    .line 1110
    .local v0, "i":I
    aget-char v1, p1, v0

    .line 1112
    .local v1, "c":I
    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 1113
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 1116
    :cond_0
    const/16 v3, 0x39

    const/16 v4, 0x30

    if-ne v1, v4, :cond_1

    .line 1117
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    goto :goto_1

    .line 1118
    :cond_1
    const/16 v5, 0x31

    if-lt v1, v5, :cond_a

    if-gt v1, v3, :cond_a

    .line 1119
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 1120
    :goto_0
    if-lt v1, v4, :cond_2

    if-gt v1, v3, :cond_2

    .line 1121
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    goto :goto_0

    .line 1127
    :cond_2
    :goto_1
    const/16 v5, 0x2e

    if-ne v1, v5, :cond_3

    .line 1128
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 1129
    :goto_2
    if-lt v1, v4, :cond_3

    if-gt v1, v3, :cond_3

    .line 1130
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    goto :goto_2

    .line 1134
    :cond_3
    const/16 v5, 0x65

    if-eq v1, v5, :cond_4

    const/16 v5, 0x45

    if-ne v1, v5, :cond_7

    .line 1135
    :cond_4
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 1136
    const/16 v5, 0x2b

    if-eq v1, v5, :cond_5

    if-ne v1, v2, :cond_6

    .line 1137
    :cond_5
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 1139
    :cond_6
    if-lt v1, v4, :cond_9

    if-gt v1, v3, :cond_9

    .line 1140
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    .line 1141
    :goto_3
    if-lt v1, v4, :cond_7

    if-gt v1, v3, :cond_7

    .line 1142
    add-int/lit8 v0, v0, 0x1

    aget-char v1, p1, v0

    goto :goto_3

    .line 1149
    :cond_7
    add-int v2, p2, p3

    if-ne v0, v2, :cond_8

    .line 1150
    sget-object v2, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    return-object v2

    .line 1152
    :cond_8
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v2

    .line 1145
    :cond_9
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v2

    .line 1124
    :cond_a
    sget-object v2, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    return-object v2
.end method

.method private expect(Landroid/util/JsonToken;)V
    .locals 3
    .param p1, "expected"    # Landroid/util/JsonToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 311
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    if-ne v0, p1, :cond_0

    .line 314
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 315
    return-void

    .line 312
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillBuffer(I)Z
    .locals 7
    .param p1, "minimum"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 726
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 727
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v2, v2, v1

    const/16 v4, 0xa

    if-ne v2, v4, :cond_0

    .line 728
    iget v2, p0, Landroid/util/JsonReader;->bufferStartLine:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/util/JsonReader;->bufferStartLine:I

    .line 729
    iput v3, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    goto :goto_1

    .line 731
    :cond_0
    iget v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 726
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 735
    .end local v1    # "i":I
    :cond_1
    iget v1, p0, Landroid/util/JsonReader;->limit:I

    iget v2, p0, Landroid/util/JsonReader;->pos:I

    if-eq v1, v2, :cond_2

    .line 736
    iget v1, p0, Landroid/util/JsonReader;->limit:I

    iget v2, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/util/JsonReader;->limit:I

    .line 737
    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v2, p0, Landroid/util/JsonReader;->pos:I

    iget-object v4, p0, Landroid/util/JsonReader;->buffer:[C

    iget v5, p0, Landroid/util/JsonReader;->limit:I

    invoke-static {v1, v2, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 739
    :cond_2
    iput v0, p0, Landroid/util/JsonReader;->limit:I

    .line 742
    :goto_2
    iput v0, p0, Landroid/util/JsonReader;->pos:I

    .line 744
    :cond_3
    iget-object v1, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    iget-object v5, p0, Landroid/util/JsonReader;->buffer:[C

    array-length v5, v5

    iget v6, p0, Landroid/util/JsonReader;->limit:I

    sub-int/2addr v5, v6

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/Reader;->read([CII)I

    move-result v1

    move v2, v1

    .local v2, "total":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_5

    .line 745
    iget v1, p0, Landroid/util/JsonReader;->limit:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/JsonReader;->limit:I

    .line 748
    iget v1, p0, Landroid/util/JsonReader;->bufferStartLine:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    if-ne v1, v3, :cond_4

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    if-lez v1, :cond_4

    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v1, v1, v0

    const v4, 0xfeff

    if-ne v1, v4, :cond_4

    .line 750
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v1, v3

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    .line 751
    iget v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    sub-int/2addr v1, v3

    iput v1, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 754
    :cond_4
    iget v1, p0, Landroid/util/JsonReader;->limit:I

    if-lt v1, p1, :cond_3

    .line 755
    return v3

    .line 758
    :cond_5
    return v0
.end method

.method private getColumnNumber()I
    .locals 4

    .line 772
    iget v0, p0, Landroid/util/JsonReader;->bufferStartColumn:I

    .line 773
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    if-ge v1, v2, :cond_1

    .line 774
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 775
    const/4 v0, 0x1

    goto :goto_1

    .line 777
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 773
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 780
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private getLineNumber()I
    .locals 4

    .line 762
    iget v0, p0, Landroid/util/JsonReader;->bufferStartLine:I

    .line 763
    .local v0, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    if-ge v1, v2, :cond_1

    .line 764
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    aget-char v2, v2, v1

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 765
    add-int/lit8 v0, v0, 0x1

    .line 763
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 768
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private getSnippet()Ljava/lang/CharSequence;
    .locals 5

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1167
    .local v0, "snippet":Ljava/lang/StringBuilder;
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    const/16 v2, 0x14

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1168
    .local v1, "beforePos":I
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v4, v1

    invoke-virtual {v0, v3, v4, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1169
    iget v3, p0, Landroid/util/JsonReader;->limit:I

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v3, v4

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1170
    .local v2, "afterPos":I
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v0, v3, v4, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 1171
    return-object v0
.end method

.method private nextInArray(Z)Landroid/util/JsonToken;
    .locals 4
    .param p1, "firstElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 588
    const/16 v0, 0x5d

    const/16 v1, 0x3b

    const/16 v2, 0x2c

    if-eqz p1, :cond_0

    .line 589
    sget-object v3, Landroid/util/JsonScope;->NONEMPTY_ARRAY:Landroid/util/JsonScope;

    invoke-direct {p0, v3}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    goto :goto_0

    .line 592
    :cond_0
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v3

    if-eq v3, v2, :cond_3

    if-eq v3, v1, :cond_2

    if-ne v3, v0, :cond_1

    .line 594
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    .line 595
    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    .line 601
    :cond_1
    const-string v0, "Unterminated array"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 597
    :cond_2
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 599
    :cond_3
    nop

    .line 605
    :goto_0
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v3

    if-eq v3, v2, :cond_5

    if-eq v3, v1, :cond_5

    if-eq v3, v0, :cond_4

    .line 620
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    .line 621
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 607
    :cond_4
    if-eqz p1, :cond_5

    .line 608
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    .line 609
    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    .line 615
    :cond_5
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 616
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    .line 617
    const-string/jumbo v0, "null"

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 618
    sget-object v0, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0
.end method

.method private nextInObject(Z)Landroid/util/JsonToken;
    .locals 3
    .param p1, "firstElement"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    const/16 v0, 0x7d

    if-eqz p1, :cond_1

    .line 633
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 638
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    goto :goto_0

    .line 635
    :cond_0
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    .line 636
    sget-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    .line 641
    :cond_1
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_3

    const/16 v2, 0x3b

    if-eq v1, v2, :cond_3

    if-ne v1, v0, :cond_2

    .line 643
    invoke-direct {p0}, Landroid/util/JsonReader;->pop()Landroid/util/JsonScope;

    .line 644
    sget-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    .line 649
    :cond_2
    const-string v0, "Unterminated object"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 647
    :cond_3
    nop

    .line 654
    :goto_0
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    .line 655
    .local v0, "quote":I
    const/16 v1, 0x22

    if-eq v0, v1, :cond_6

    const/16 v1, 0x27

    if-eq v0, v1, :cond_5

    .line 662
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 663
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    .line 664
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    .line 665
    iget-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    .line 666
    :cond_4
    const-string v1, "Expected name"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 657
    :cond_5
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 659
    :cond_6
    int-to-char v1, v0

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    .line 660
    nop

    .line 670
    :goto_1
    sget-object v1, Landroid/util/JsonScope;->DANGLING_NAME:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    .line 671
    sget-object v1, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1
.end method

.method private nextLiteral(Z)Ljava/lang/String;
    .locals 5
    .param p1, "assignOffsetsOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 927
    const/4 v0, 0x0

    .line 928
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, -0x1

    iput v1, p0, Landroid/util/JsonReader;->valuePos:I

    .line 929
    const/4 v1, 0x0

    iput v1, p0, Landroid/util/JsonReader;->valueLength:I

    .line 930
    move-object v2, v0

    move v0, v1

    .line 934
    .local v0, "i":I
    .local v2, "builder":Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v0

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    if-ge v3, v4, :cond_1

    .line 935
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v4, v0

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_0

    .line 934
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 941
    :sswitch_0
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 953
    :sswitch_1
    goto :goto_1

    .line 962
    :cond_1
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 963
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 964
    goto :goto_0

    .line 966
    :cond_2
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    aput-char v1, v3, v4

    .line 967
    goto :goto_1

    .line 972
    :cond_3
    if-nez v2, :cond_4

    .line 973
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v3

    .line 975
    :cond_4
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v2, v3, v4, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 976
    iget v3, p0, Landroid/util/JsonReader;->valueLength:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/util/JsonReader;->valueLength:I

    .line 977
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    .line 978
    const/4 v0, 0x0

    .line 979
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 980
    nop

    .line 985
    :goto_1
    if-eqz p1, :cond_5

    if-nez v2, :cond_5

    .line 986
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    iput v1, p0, Landroid/util/JsonReader;->valuePos:I

    .line 987
    const/4 v1, 0x0

    .line 987
    .local v1, "result":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 988
    .end local v1    # "result":Ljava/lang/String;
    :cond_5
    iget-boolean v1, p0, Landroid/util/JsonReader;->skipping:Z

    if-eqz v1, :cond_6

    .line 989
    const-string/jumbo v1, "skipped!"

    goto :goto_2

    .line 990
    :cond_6
    if-nez v2, :cond_7

    .line 991
    iget-object v1, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v1, v3, v4, v0}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 993
    :cond_7
    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 994
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 996
    .restart local v1    # "result":Ljava/lang/String;
    :goto_3
    iget v3, p0, Landroid/util/JsonReader;->valueLength:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/util/JsonReader;->valueLength:I

    .line 997
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v0

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    .line 998
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_1
        0xa -> :sswitch_1
        0xc -> :sswitch_1
        0xd -> :sswitch_1
        0x20 -> :sswitch_1
        0x23 -> :sswitch_0
        0x2c -> :sswitch_1
        0x2f -> :sswitch_0
        0x3a -> :sswitch_1
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
        0x5b -> :sswitch_1
        0x5c -> :sswitch_0
        0x5d -> :sswitch_1
        0x7b -> :sswitch_1
        0x7d -> :sswitch_1
    .end sparse-switch
.end method

.method private nextNonWhitespace()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 784
    :goto_0
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 835
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of input"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 785
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 786
    .local v0, "c":I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_8

    const/16 v1, 0x20

    if-eq v0, v1, :cond_8

    const/16 v1, 0x23

    if-eq v0, v1, :cond_7

    const/16 v1, 0x2f

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    .line 831
    return v0

    .line 794
    :cond_2
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    iget v4, p0, Landroid/util/JsonReader;->limit:I

    if-ne v3, v4, :cond_3

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 795
    return v0

    .line 798
    :cond_3
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 799
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    aget-char v3, v3, v4

    .line 800
    .local v3, "peek":C
    const/16 v4, 0x2a

    if-eq v3, v4, :cond_5

    if-eq v3, v1, :cond_4

    .line 817
    return v0

    .line 812
    :cond_4
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    .line 813
    invoke-direct {p0}, Landroid/util/JsonReader;->skipToEndOfLine()V

    .line 814
    goto :goto_0

    .line 803
    :cond_5
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    .line 804
    const-string v1, "*/"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->skipTo(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 807
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    .line 808
    goto :goto_0

    .line 805
    :cond_6
    const-string v1, "Unterminated comment"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 826
    .end local v3    # "peek":C
    :cond_7
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 827
    invoke-direct {p0}, Landroid/util/JsonReader;->skipToEndOfLine()V

    .line 828
    goto :goto_0

    .line 791
    :cond_8
    :pswitch_0
    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private nextString(C)Ljava/lang/String;
    .locals 7
    .param p1, "quote"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 882
    const/4 v0, 0x0

    .line 885
    .local v0, "builder":Ljava/lang/StringBuilder;
    :goto_0
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    .line 886
    .local v1, "start":I
    :goto_1
    iget v2, p0, Landroid/util/JsonReader;->pos:I

    iget v3, p0, Landroid/util/JsonReader;->limit:I

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5

    .line 887
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v5, v3, 0x1

    iput v5, p0, Landroid/util/JsonReader;->pos:I

    aget-char v2, v2, v3

    .line 889
    .local v2, "c":I
    if-ne v2, p1, :cond_2

    .line 890
    iget-boolean v3, p0, Landroid/util/JsonReader;->skipping:Z

    if-eqz v3, :cond_0

    .line 891
    const-string/jumbo v3, "skipped!"

    return-object v3

    .line 892
    :cond_0
    if-nez v0, :cond_1

    .line 893
    iget-object v3, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    iget-object v5, p0, Landroid/util/JsonReader;->buffer:[C

    iget v6, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v6, v1

    sub-int/2addr v6, v4

    invoke-virtual {v3, v5, v1, v6}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 895
    :cond_1
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v5, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {v0, v3, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 896
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 899
    :cond_2
    const/16 v3, 0x5c

    if-ne v2, v3, :cond_4

    .line 900
    if-nez v0, :cond_3

    .line 901
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v3

    .line 903
    :cond_3
    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v5, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v5, v1

    sub-int/2addr v5, v4

    invoke-virtual {v0, v3, v1, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 904
    invoke-direct {p0}, Landroid/util/JsonReader;->readEscapeCharacter()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 905
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    .line 907
    .end local v2    # "c":I
    :cond_4
    goto :goto_1

    .line 909
    :cond_5
    if-nez v0, :cond_6

    .line 910
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    .line 912
    :cond_6
    iget-object v2, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v1, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 913
    .end local v1    # "start":I
    invoke-direct {p0, v4}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    .line 915
    :cond_7
    const-string v1, "Unterminated string"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1
.end method

.method private nextValue()Landroid/util/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    .line 698
    .local v0, "c":I
    const/16 v1, 0x22

    if-eq v0, v1, :cond_3

    const/16 v1, 0x27

    if-eq v0, v1, :cond_2

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_0

    .line 714
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/util/JsonReader;->pos:I

    .line 715
    invoke-direct {p0}, Landroid/util/JsonReader;->readLiteral()Landroid/util/JsonToken;

    move-result-object v1

    return-object v1

    .line 700
    :cond_0
    sget-object v1, Landroid/util/JsonScope;->EMPTY_OBJECT:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    .line 701
    sget-object v1, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    .line 704
    :cond_1
    sget-object v1, Landroid/util/JsonScope;->EMPTY_ARRAY:Landroid/util/JsonScope;

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->push(Landroid/util/JsonScope;)V

    .line 705
    sget-object v1, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    .line 708
    :cond_2
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 710
    :cond_3
    int-to-char v1, v0

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextString(C)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 711
    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1
.end method

.method private objectValue()Landroid/util/JsonToken;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 679
    invoke-direct {p0}, Landroid/util/JsonReader;->nextNonWhitespace()I

    move-result v0

    const/16 v1, 0x3a

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1

    .line 683
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 684
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v0, v1

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_3

    .line 685
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    goto :goto_0

    .line 689
    :cond_1
    const-string v0, "Expected \':\'"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 681
    :cond_2
    nop

    .line 692
    :cond_3
    :goto_0
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_OBJECT:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    .line 693
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    return-object v0
.end method

.method private peekStack()Landroid/util/JsonScope;
    .locals 2

    .line 569
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/JsonScope;

    return-object v0
.end method

.method private pop()Landroid/util/JsonScope;
    .locals 2

    .line 573
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/JsonScope;

    return-object v0
.end method

.method private push(Landroid/util/JsonScope;)V
    .locals 1
    .param p1, "newTop"    # Landroid/util/JsonScope;

    .line 577
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    return-void
.end method

.method private readEscapeCharacter()C
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1015
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1016
    :cond_0
    const-string v0, "Unterminated escape sequence"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 1019
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 1020
    .local v0, "escaped":C
    const/16 v1, 0x62

    if-eq v0, v1, :cond_7

    const/16 v1, 0x66

    if-eq v0, v1, :cond_6

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_5

    const/16 v1, 0x72

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 1048
    return v0

    .line 1022
    :pswitch_0
    iget v1, p0, Landroid/util/JsonReader;->pos:I

    const/4 v2, 0x4

    add-int/2addr v1, v2

    iget v3, p0, Landroid/util/JsonReader;->limit:I

    if-le v1, v3, :cond_3

    invoke-direct {p0, v2}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 1023
    :cond_2
    const-string v1, "Unterminated escape sequence"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 1025
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/util/JsonReader;->stringPool:Llibcore/internal/StringPool;

    iget-object v3, p0, Landroid/util/JsonReader;->buffer:[C

    iget v4, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {v1, v3, v4, v2}, Llibcore/internal/StringPool;->get([CII)Ljava/lang/String;

    move-result-object v1

    .line 1026
    .local v1, "hex":Ljava/lang/String;
    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Landroid/util/JsonReader;->pos:I

    .line 1027
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    int-to-char v2, v2

    return v2

    .line 1030
    .end local v1    # "hex":Ljava/lang/String;
    :pswitch_1
    const/16 v1, 0x9

    return v1

    .line 1039
    :cond_4
    const/16 v1, 0xd

    return v1

    .line 1036
    :cond_5
    const/16 v1, 0xa

    return v1

    .line 1042
    :cond_6
    const/16 v1, 0xc

    return v1

    .line 1033
    :cond_7
    const/16 v1, 0x8

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private readLiteral()Landroid/util/JsonToken;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1056
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->nextLiteral(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 1057
    iget v0, p0, Landroid/util/JsonReader;->valueLength:I

    if-eqz v0, :cond_1

    .line 1060
    invoke-direct {p0}, Landroid/util/JsonReader;->decodeLiteral()Landroid/util/JsonToken;

    move-result-object v0

    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 1061
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    .line 1062
    invoke-direct {p0}, Landroid/util/JsonReader;->checkLenient()V

    .line 1064
    :cond_0
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    .line 1058
    :cond_1
    const-string v0, "Expected literal value"

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method

.method private replaceTop(Landroid/util/JsonScope;)V
    .locals 2
    .param p1, "newTop"    # Landroid/util/JsonScope;

    .line 584
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    iget-object v1, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 585
    return-void
.end method

.method private skipTo(Ljava/lang/String;)Z
    .locals 4
    .param p1, "toFind"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 860
    :goto_0
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 868
    :cond_0
    return v2

    .line 861
    :cond_1
    :goto_1
    nop

    .local v2, "c":I
    :goto_2
    move v0, v2

    .end local v2    # "c":I
    .local v0, "c":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_3

    .line 862
    iget-object v1, p0, Landroid/util/JsonReader;->buffer:[C

    iget v3, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v3, v0

    aget-char v1, v1, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v1, v3, :cond_2

    .line 863
    nop

    .line 860
    .end local v0    # "c":I
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    add-int/2addr v0, v2

    iput v0, p0, Landroid/util/JsonReader;->pos:I

    goto :goto_0

    .line 861
    .restart local v0    # "c":I
    :cond_2
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "c":I
    .restart local v2    # "c":I
    goto :goto_2

    .line 866
    .end local v2    # "c":I
    :cond_3
    return v2
.end method

.method private skipToEndOfLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 850
    :goto_0
    iget v0, p0, Landroid/util/JsonReader;->pos:I

    iget v1, p0, Landroid/util/JsonReader;->limit:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->fillBuffer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 851
    :cond_0
    iget-object v0, p0, Landroid/util/JsonReader;->buffer:[C

    iget v1, p0, Landroid/util/JsonReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/JsonReader;->pos:I

    aget-char v0, v0, v1

    .line 852
    .local v0, "c":C
    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 853
    goto :goto_1

    .line 855
    .end local v0    # "c":C
    :cond_1
    goto :goto_0

    .line 856
    :cond_2
    :goto_1
    return-void
.end method

.method private syntaxError(Ljava/lang/String;)Ljava/io/IOException;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1161
    new-instance v0, Landroid/util/MalformedJsonException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at line "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    invoke-direct {p0}, Landroid/util/JsonReader;->getLineNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " column "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/util/JsonReader;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/MalformedJsonException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public beginArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    sget-object v0, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    .line 280
    return-void
.end method

.method public beginObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    sget-object v0, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    .line 296
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 537
    iput-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    .line 538
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 539
    iget-object v0, p0, Landroid/util/JsonReader;->stack:Ljava/util/List;

    sget-object v1, Landroid/util/JsonScope;->CLOSED:Landroid/util/JsonScope;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    iget-object v0, p0, Landroid/util/JsonReader;->in:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 541
    return-void
.end method

.method public endArray()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    sget-object v0, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    .line 288
    return-void
.end method

.method public endObject()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    sget-object v0, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->expect(Landroid/util/JsonToken;)V

    .line 304
    return-void
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 322
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLenient()Z
    .locals 1

    .line 271
    iget-boolean v0, p0, Landroid/util/JsonReader;->lenient:Z

    return v0
.end method

.method public nextBoolean()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 426
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 427
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->BOOLEAN:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_1

    .line 431
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    const-string/jumbo v1, "true"

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 432
    .local v0, "result":Z
    :goto_0
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 433
    return v0

    .line 428
    .end local v0    # "result":Z
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a boolean but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextDouble()D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 461
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a double but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 466
    .local v0, "result":D
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 467
    return-wide v0
.end method

.method public nextInt()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 513
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected an int but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .local v0, "result":I
    goto :goto_1

    .line 520
    .end local v0    # "result":I
    :catch_0
    move-exception v0

    .line 521
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 522
    .local v1, "asDouble":D
    double-to-int v3, v1

    .line 523
    .local v3, "result":I
    int-to-double v4, v3

    cmpl-double v4, v4, v1

    if-nez v4, :cond_2

    .line 528
    .end local v0    # "ignored":Ljava/lang/NumberFormatException;
    .end local v1    # "asDouble":D
    move v0, v3

    .end local v3    # "result":I
    .local v0, "result":I
    :goto_1
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 529
    return v0

    .line 524
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    .restart local v1    # "asDouble":D
    .restart local v3    # "result":I
    :cond_2
    new-instance v4, Ljava/lang/NumberFormatException;

    iget-object v5, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public nextLong()J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 481
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 482
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 483
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a long but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 488
    :cond_1
    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .local v0, "result":J
    goto :goto_1

    .line 489
    .end local v0    # "result":J
    :catch_0
    move-exception v0

    .line 490
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    iget-object v1, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 491
    .local v1, "asDouble":D
    double-to-long v3, v1

    .line 492
    .local v3, "result":J
    long-to-double v5, v3

    cmpl-double v5, v5, v1

    if-nez v5, :cond_2

    .line 497
    .end local v0    # "ignored":Ljava/lang/NumberFormatException;
    .end local v1    # "asDouble":D
    move-wide v0, v3

    .end local v3    # "result":J
    .local v0, "result":J
    :goto_1
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 498
    return-wide v0

    .line 493
    .local v0, "ignored":Ljava/lang/NumberFormatException;
    .restart local v1    # "asDouble":D
    .restart local v3    # "result":J
    :cond_2
    new-instance v5, Ljava/lang/NumberFormatException;

    iget-object v6, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public nextName()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 391
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NAME:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    .line 394
    iget-object v0, p0, Landroid/util/JsonReader;->name:Ljava/lang/String;

    .line 395
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 396
    return-object v0

    .line 392
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a name but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextNull()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 444
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 445
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    .line 449
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 450
    return-void

    .line 446
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected null but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 408
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    .line 409
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->STRING:Landroid/util/JsonToken;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v1, Landroid/util/JsonToken;->NUMBER:Landroid/util/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 410
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected a string but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 413
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/util/JsonReader;->value:Ljava/lang/String;

    .line 414
    .local v0, "result":Ljava/lang/String;
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    .line 415
    return-object v0
.end method

.method public peek()Landroid/util/JsonToken;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v0

    .line 333
    :cond_0
    sget-object v0, Landroid/util/JsonReader$1;->$SwitchMap$android$util$JsonScope:[I

    invoke-direct {p0}, Landroid/util/JsonReader;->peekStack()Landroid/util/JsonScope;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/JsonScope;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 365
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 363
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonReader is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 354
    :pswitch_1
    :try_start_0
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    .line 355
    .local v0, "token":Landroid/util/JsonToken;
    iget-boolean v1, p0, Landroid/util/JsonReader;->lenient:Z

    if-eqz v1, :cond_1

    .line 356
    return-object v0

    .line 358
    :cond_1
    const-string v1, "Expected EOF"

    invoke-direct {p0, v1}, Landroid/util/JsonReader;->syntaxError(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    .end local v0    # "token":Landroid/util/JsonToken;
    :catch_0
    move-exception v0

    .line 360
    .local v0, "e":Ljava/io/EOFException;
    sget-object v1, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    iput-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    return-object v1

    .line 351
    .end local v0    # "e":Ljava/io/EOFException;
    :pswitch_2
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->nextInObject(Z)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 349
    :pswitch_3
    invoke-direct {p0}, Landroid/util/JsonReader;->objectValue()Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 347
    :pswitch_4
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextInObject(Z)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 345
    :pswitch_5
    invoke-direct {p0, v2}, Landroid/util/JsonReader;->nextInArray(Z)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 343
    :pswitch_6
    invoke-direct {p0, v1}, Landroid/util/JsonReader;->nextInArray(Z)Landroid/util/JsonToken;

    move-result-object v0

    return-object v0

    .line 335
    :pswitch_7
    sget-object v0, Landroid/util/JsonScope;->NONEMPTY_DOCUMENT:Landroid/util/JsonScope;

    invoke-direct {p0, v0}, Landroid/util/JsonReader;->replaceTop(Landroid/util/JsonScope;)V

    .line 336
    invoke-direct {p0}, Landroid/util/JsonReader;->nextValue()Landroid/util/JsonToken;

    move-result-object v0

    .line 337
    .local v0, "firstToken":Landroid/util/JsonToken;
    iget-boolean v1, p0, Landroid/util/JsonReader;->lenient:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    sget-object v2, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 338
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected JSON document to start with \'[\' or \'{\' but was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/util/JsonReader;->token:Landroid/util/JsonToken;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 341
    :cond_3
    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .line 264
    iput-boolean p1, p0, Landroid/util/JsonReader;->lenient:Z

    .line 265
    return-void
.end method

.method public skipValue()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 549
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    .line 551
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v1

    sget-object v2, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    if-eq v1, v2, :cond_5

    .line 554
    move v1, v0

    .line 556
    .local v1, "count":I
    :cond_0
    invoke-direct {p0}, Landroid/util/JsonReader;->advance()Landroid/util/JsonToken;

    move-result-object v2

    .line 557
    .local v2, "token":Landroid/util/JsonToken;
    sget-object v3, Landroid/util/JsonToken;->BEGIN_ARRAY:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_3

    sget-object v3, Landroid/util/JsonToken;->BEGIN_OBJECT:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 559
    :cond_1
    sget-object v3, Landroid/util/JsonToken;->END_ARRAY:Landroid/util/JsonToken;

    if-eq v2, v3, :cond_2

    sget-object v3, Landroid/util/JsonToken;->END_OBJECT:Landroid/util/JsonToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_4

    .line 560
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .end local v2    # "token":Landroid/util/JsonToken;
    goto :goto_1

    .line 558
    .restart local v2    # "token":Landroid/util/JsonToken;
    :cond_3
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 562
    .end local v2    # "token":Landroid/util/JsonToken;
    :cond_4
    :goto_1
    if-nez v1, :cond_0

    .line 564
    .end local v1    # "count":I
    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    .line 565
    nop

    .line 566
    return-void

    .line 552
    :cond_5
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No element left to skip"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 564
    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Landroid/util/JsonReader;->skipping:Z

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1002
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " near "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Landroid/util/JsonReader;->getSnippet()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
