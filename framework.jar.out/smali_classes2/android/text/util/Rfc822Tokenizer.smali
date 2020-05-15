.class public Landroid/text/util/Rfc822Tokenizer;
.super Ljava/lang/Object;
.source "Rfc822Tokenizer.java"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crunch(Ljava/lang/StringBuilder;)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;

    .line 178
    const/4 v0, 0x0

    .line 179
    .local v0, "i":I
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 181
    .local v1, "len":I
    :goto_0
    const/16 v2, 0x20

    if-ge v0, v1, :cond_3

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    .line 184
    .local v3, "c":C
    if-nez v3, :cond_2

    .line 185
    if-eqz v0, :cond_1

    add-int/lit8 v4, v1, -0x1

    if-eq v0, v4, :cond_1

    add-int/lit8 v4, v0, -0x1

    .line 186
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_1

    add-int/lit8 v4, v0, -0x1

    .line 187
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v0, 0x1

    .line 188
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eq v4, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 189
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 193
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 190
    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 191
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 196
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 198
    .end local v3    # "c":C
    :goto_2
    goto :goto_0

    .line 200
    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_5

    .line 201
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_4

    .line 202
    invoke-virtual {p0, v0, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 200
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 205
    :cond_5
    return-void
.end method

.method public static tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V
    .locals 11
    .param p0, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "out":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/text/util/Rfc822Token;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v0, "name":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v1, "address":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .local v2, "comment":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 51
    .local v3, "i":I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .line 53
    .local v4, "cursor":I
    :goto_0
    const/4 v5, 0x0

    if-ge v3, v4, :cond_14

    .line 54
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 56
    .local v6, "c":C
    const/16 v7, 0x2c

    const/16 v8, 0x20

    const/4 v9, 0x0

    if-eq v6, v7, :cond_f

    const/16 v7, 0x3b

    if-ne v6, v7, :cond_0

    goto/16 :goto_4

    .line 78
    :cond_0
    const/16 v5, 0x5c

    const/16 v7, 0x22

    if-ne v6, v7, :cond_4

    .line 79
    add-int/lit8 v3, v3, 0x1

    .line 81
    :goto_1
    if-ge v3, v4, :cond_13

    .line 82
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 84
    if-ne v6, v7, :cond_1

    .line 85
    add-int/lit8 v3, v3, 0x1

    .line 86
    goto/16 :goto_7

    .line 87
    :cond_1
    if-ne v6, v5, :cond_3

    .line 88
    add-int/lit8 v8, v3, 0x1

    if-ge v8, v4, :cond_2

    .line 89
    add-int/lit8 v8, v3, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    :cond_2
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 97
    :cond_4
    const/16 v7, 0x28

    if-ne v6, v7, :cond_b

    .line 98
    const/4 v8, 0x1

    .line 99
    .local v8, "level":I
    add-int/lit8 v3, v3, 0x1

    .line 101
    :goto_2
    if-ge v3, v4, :cond_a

    if-lez v8, :cond_a

    .line 102
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 104
    const/16 v9, 0x29

    if-ne v6, v9, :cond_6

    .line 105
    const/4 v9, 0x1

    if-le v8, v9, :cond_5

    .line 106
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    :cond_5
    add-int/lit8 v8, v8, -0x1

    .line 110
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 111
    :cond_6
    if-ne v6, v7, :cond_7

    .line 112
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v8, v8, 0x1

    .line 114
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 115
    :cond_7
    if-ne v6, v5, :cond_9

    .line 116
    add-int/lit8 v9, v3, 0x1

    if-ge v9, v4, :cond_8

    .line 117
    add-int/lit8 v9, v3, 0x1

    invoke-interface {p0, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    :cond_8
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 121
    :cond_9
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 125
    .end local v8    # "level":I
    :cond_a
    goto/16 :goto_7

    :cond_b
    const/16 v5, 0x3c

    if-ne v6, v5, :cond_d

    .line 126
    add-int/lit8 v3, v3, 0x1

    .line 128
    :goto_3
    if-ge v3, v4, :cond_13

    .line 129
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 131
    const/16 v5, 0x3e

    if-ne v6, v5, :cond_c

    .line 132
    add-int/lit8 v3, v3, 0x1

    .line 133
    goto :goto_7

    .line 135
    :cond_c
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 139
    :cond_d
    if-ne v6, v8, :cond_e

    .line 140
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 143
    :cond_e
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v3, v3, 0x1

    .end local v6    # "c":C
    goto :goto_7

    .line 57
    .restart local v6    # "c":C
    :cond_f
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 59
    :goto_5
    if-ge v3, v4, :cond_10

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_10

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 63
    :cond_10
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 65
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_11

    .line 66
    new-instance v5, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 68
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v7, v8, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 69
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_12

    .line 70
    new-instance v7, Landroid/text/util/Rfc822Token;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v5, v8, v10}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_12
    :goto_6
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 76
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 146
    .end local v6    # "c":C
    :cond_13
    :goto_7
    goto/16 :goto_0

    .line 148
    :cond_14
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 150
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_15

    .line 151
    new-instance v5, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 152
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 154
    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_16

    .line 155
    new-instance v6, Landroid/text/util/Rfc822Token;

    .line 156
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v5, v7, v8}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 159
    :cond_16
    :goto_8
    return-void
.end method

.method public static tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/util/Rfc822Token;>;"
    invoke-static {p0, v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 174
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/text/util/Rfc822Token;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/util/Rfc822Token;

    return-object v1
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .line 242
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 243
    .local v0, "len":I
    move v1, p2

    .line 245
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_d

    .line 246
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 248
    .local v2, "c":C
    const/16 v3, 0x2c

    if-eq v2, v3, :cond_c

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_0

    goto/16 :goto_5

    .line 250
    :cond_0
    const/16 v3, 0x5c

    const/16 v4, 0x22

    if-ne v2, v4, :cond_3

    .line 251
    add-int/lit8 v1, v1, 0x1

    .line 253
    :goto_1
    if-ge v1, v0, :cond_b

    .line 254
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 256
    if-ne v2, v4, :cond_1

    .line 257
    add-int/lit8 v1, v1, 0x1

    .line 258
    goto :goto_4

    .line 259
    :cond_1
    if-ne v2, v3, :cond_2

    add-int/lit8 v5, v1, 0x1

    if-ge v5, v0, :cond_2

    .line 260
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 262
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 265
    :cond_3
    const/16 v4, 0x28

    if-ne v2, v4, :cond_8

    .line 266
    const/4 v5, 0x1

    .line 267
    .local v5, "level":I
    add-int/lit8 v1, v1, 0x1

    .line 269
    :goto_2
    if-ge v1, v0, :cond_7

    if-lez v5, :cond_7

    .line 270
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 272
    const/16 v6, 0x29

    if-ne v2, v6, :cond_4

    .line 273
    add-int/lit8 v5, v5, -0x1

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 275
    :cond_4
    if-ne v2, v4, :cond_5

    .line 276
    add-int/lit8 v5, v5, 0x1

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 278
    :cond_5
    if-ne v2, v3, :cond_6

    add-int/lit8 v6, v1, 0x1

    if-ge v6, v0, :cond_6

    .line 279
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 281
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 284
    .end local v5    # "level":I
    :cond_7
    goto :goto_4

    :cond_8
    const/16 v3, 0x3c

    if-ne v2, v3, :cond_a

    .line 285
    add-int/lit8 v1, v1, 0x1

    .line 287
    :goto_3
    if-ge v1, v0, :cond_b

    .line 288
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 290
    const/16 v3, 0x3e

    if-ne v2, v3, :cond_9

    .line 291
    add-int/lit8 v1, v1, 0x1

    .line 292
    goto :goto_4

    .line 294
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 298
    :cond_a
    add-int/lit8 v1, v1, 0x1

    .line 300
    .end local v2    # "c":C
    :cond_b
    :goto_4
    goto :goto_0

    .line 249
    .restart local v2    # "c":C
    :cond_c
    :goto_5
    return v1

    .line 302
    .end local v2    # "c":C
    :cond_d
    return v1
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "cursor"    # I

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "best":I
    const/4 v1, 0x0

    .line 219
    .local v1, "i":I
    :cond_0
    :goto_0
    if-ge v1, p2, :cond_2

    .line 220
    invoke-virtual {p0, p1, v1}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 222
    if-ge v1, p2, :cond_0

    .line 223
    add-int/lit8 v1, v1, 0x1

    .line 225
    :goto_1
    if-ge v1, p2, :cond_1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 229
    :cond_1
    if-ge v1, p2, :cond_0

    .line 230
    move v0, v1

    goto :goto_0

    .line 235
    :cond_2
    return v0
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
