.class public Landroid/text/AutoText;
.super Ljava/lang/Object;
.source "AutoText.java"


# static fields
.field private static final DEFAULT:I = 0x3801

.field private static final INCREMENT:I = 0x400

.field private static final RIGHT:I = 0x2454

.field private static final TRIE_C:I = 0x0

.field private static final TRIE_CHILD:I = 0x2

.field private static final TRIE_NEXT:I = 0x3

.field private static final TRIE_NULL:C = '\uffff'

.field private static final TRIE_OFF:I = 0x1

.field private static final TRIE_ROOT:I = 0x0

.field private static final TRIE_SIZEOF:I = 0x4

.field private static sInstance:Landroid/text/AutoText;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mLocale:Ljava/util/Locale;

.field private mSize:I

.field private mText:Ljava/lang/String;

.field private mTrie:[C

.field private mTrieUsed:C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    new-instance v0, Landroid/text/AutoText;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    sput-object v0, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    .line 77
    invoke-direct {p0, p1}, Landroid/text/AutoText;->init(Landroid/content/res/Resources;)V

    .line 78
    return-void
.end method

.method private add(Ljava/lang/String;C)V
    .locals 10
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "off"    # C

    .line 212
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 213
    .local v0, "slen":I
    const/4 v1, 0x0

    .line 215
    .local v1, "herep":I
    iget v2, p0, Landroid/text/AutoText;->mSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/text/AutoText;->mSize:I

    .line 217
    const/4 v2, 0x0

    move v3, v1

    move v1, v2

    .local v1, "i":I
    .local v3, "herep":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 218
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 219
    .local v4, "c":C
    move v5, v3

    move v3, v2

    .line 221
    .local v3, "found":Z
    .local v5, "herep":I
    :goto_1
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v5

    const v7, 0xffff

    if-eq v6, v7, :cond_2

    .line 223
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v8, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v8, v8, v5

    add-int/2addr v8, v2

    aget-char v6, v6, v8

    if-ne v4, v6, :cond_1

    .line 227
    add-int/lit8 v6, v0, -0x1

    if-ne v1, v6, :cond_0

    .line 228
    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v5

    add-int/lit8 v6, v6, 0x1

    aput-char p2, v2, v6

    .line 229
    return-void

    .line 235
    :cond_0
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v5

    add-int/lit8 v5, v6, 0x2

    .line 236
    const/4 v3, 0x1

    .line 237
    goto :goto_2

    .line 222
    :cond_1
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v6, v6, v5

    add-int/lit8 v5, v6, 0x3

    goto :goto_1

    .line 241
    :cond_2
    :goto_2
    if-nez v3, :cond_4

    .line 244
    invoke-direct {p0}, Landroid/text/AutoText;->newTrieNode()C

    move-result v6

    .line 245
    .local v6, "node":C
    iget-object v8, p0, Landroid/text/AutoText;->mTrie:[C

    aput-char v6, v8, v5

    .line 247
    iget-object v8, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v9, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v9, v9, v5

    add-int/2addr v9, v2

    aput-char v4, v8, v9

    .line 248
    iget-object v8, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v9, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v9, v9, v5

    add-int/lit8 v9, v9, 0x1

    aput-char v7, v8, v9

    .line 249
    iget-object v8, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v9, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v9, v9, v5

    add-int/lit8 v9, v9, 0x3

    aput-char v7, v8, v9

    .line 250
    iget-object v8, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v9, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v9, v9, v5

    add-int/lit8 v9, v9, 0x2

    aput-char v7, v8, v9

    .line 254
    add-int/lit8 v7, v0, -0x1

    if-ne v1, v7, :cond_3

    .line 255
    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v5

    add-int/lit8 v7, v7, 0x1

    aput-char p2, v2, v7

    .line 256
    return-void

    .line 261
    :cond_3
    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    aget-char v7, v7, v5

    add-int/lit8 v7, v7, 0x2

    .line 217
    .end local v3    # "found":Z
    .end local v4    # "c":C
    .end local v5    # "herep":I
    .end local v6    # "node":C
    .local v7, "herep":I
    move v3, v7

    goto :goto_3

    .end local v7    # "herep":I
    .restart local v5    # "herep":I
    :cond_4
    move v3, v5

    .end local v5    # "herep":I
    .local v3, "herep":I
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 264
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method public static get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 1
    .param p0, "src"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "view"    # Landroid/view/View;

    .line 110
    invoke-static {p3}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Landroid/text/AutoText;->lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getInstance(Landroid/view/View;)Landroid/text/AutoText;
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .line 87
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 88
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 91
    .local v1, "locale":Ljava/util/Locale;
    sget-object v2, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 92
    :try_start_0
    sget-object v3, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    .line 94
    .local v3, "instance":Landroid/text/AutoText;
    iget-object v4, v3, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 95
    new-instance v4, Landroid/text/AutoText;

    invoke-direct {v4, v0}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    move-object v3, v4

    .line 96
    sput-object v3, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    .line 98
    :cond_0
    monitor-exit v2

    move-object v2, v3

    .line 100
    .end local v3    # "instance":Landroid/text/AutoText;
    .local v2, "instance":Landroid/text/AutoText;
    return-object v2

    .line 98
    .end local v2    # "instance":Landroid/text/AutoText;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private getSize()I
    .locals 1

    .line 128
    iget v0, p0, Landroid/text/AutoText;->mSize:I

    return v0
.end method

.method public static getSize(Landroid/view/View;)I
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    .line 121
    invoke-static {p0}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    move-result-object v0

    invoke-direct {v0}, Landroid/text/AutoText;->getSize()I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/res/Resources;)V
    .locals 9
    .param p1, "r"    # Landroid/content/res/Resources;

    .line 161
    const v0, 0x1170003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 163
    .local v0, "parser":Landroid/content/res/XmlResourceParser;
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2454

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 164
    .local v1, "right":Ljava/lang/StringBuilder;
    const/16 v2, 0x3801

    new-array v2, v2, [C

    iput-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    .line 165
    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    const/4 v3, 0x0

    const v4, 0xffff

    aput-char v4, v2, v3

    .line 166
    const/4 v2, 0x1

    iput-char v2, p0, Landroid/text/AutoText;->mTrieUsed:C

    .line 169
    :try_start_0
    const-string/jumbo v2, "words"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 170
    const-string v2, ""

    .line 171
    .local v2, "odest":Ljava/lang/String;
    nop

    .line 174
    .local v3, "ooff":C
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 176
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 177
    .local v4, "element":Ljava/lang/String;
    if-eqz v4, :cond_3

    const-string/jumbo v5, "word"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 178
    goto :goto_2

    .line 181
    :cond_0
    const/4 v5, 0x0

    const-string/jumbo v6, "src"

    invoke-interface {v0, v5, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "src":Ljava/lang/String;
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_2

    .line 183
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v6

    .line 186
    .local v6, "dest":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 187
    move v7, v3

    .line 187
    .local v7, "off":C
    goto :goto_1

    .line 189
    .end local v7    # "off":C
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    int-to-char v7, v7

    .line 190
    .restart local v7    # "off":C
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    int-to-char v8, v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :goto_1
    invoke-direct {p0, v5, v7}, Landroid/text/AutoText;->add(Ljava/lang/String;C)V

    .line 196
    .end local v4    # "element":Ljava/lang/String;
    .end local v5    # "src":Ljava/lang/String;
    .end local v6    # "dest":Ljava/lang/String;
    .end local v7    # "off":C
    :cond_2
    goto :goto_0

    .line 199
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/Resources;->flushLayoutCache()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .end local v2    # "odest":Ljava/lang/String;
    .end local v3    # "ooff":C
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 206
    nop

    .line 208
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    .line 209
    return-void

    .line 205
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 202
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 200
    .end local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 201
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_3
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2
.end method

.method private lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 8
    .param p1, "src"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 132
    iget-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    .line 134
    .local v0, "here":I
    move v1, v0

    move v0, p2

    .local v0, "i":I
    .local v1, "here":I
    :goto_0
    const/4 v2, 0x0

    if-ge v0, p3, :cond_4

    .line 135
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    .line 137
    .local v3, "c":C
    :goto_1
    const v4, 0xffff

    if-eq v1, v4, :cond_2

    .line 138
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v1, 0x0

    aget-char v5, v5, v6

    if-ne v3, v5, :cond_1

    .line 139
    add-int/lit8 v5, p3, -0x1

    if-ne v0, v5, :cond_0

    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v1, 0x1

    aget-char v5, v5, v6

    if-eq v5, v4, :cond_0

    .line 141
    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v4, v1, 0x1

    aget-char v2, v2, v4

    .line 142
    .local v2, "off":I
    iget-object v4, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 144
    .local v4, "len":I
    iget-object v5, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v7, v2, 0x1

    add-int/2addr v7, v4

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 147
    .end local v2    # "off":I
    .end local v4    # "len":I
    :cond_0
    iget-object v5, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v6, v1, 0x2

    aget-char v1, v5, v6

    .line 148
    goto :goto_2

    .line 137
    :cond_1
    iget-object v4, p0, Landroid/text/AutoText;->mTrie:[C

    add-int/lit8 v5, v1, 0x3

    aget-char v1, v4, v5

    goto :goto_1

    .line 152
    :cond_2
    :goto_2
    if-ne v1, v4, :cond_3

    .line 153
    return-object v2

    .line 134
    .end local v3    # "c":C
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v0    # "i":I
    :cond_4
    return-object v2
.end method

.method private newTrieNode()C
    .locals 4

    .line 267
    iget-char v0, p0, Landroid/text/AutoText;->mTrieUsed:C

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 268
    iget-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v0, v0

    add-int/lit16 v0, v0, 0x400

    new-array v0, v0, [C

    .line 269
    .local v0, "copy":[C
    iget-object v1, p0, Landroid/text/AutoText;->mTrie:[C

    iget-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    iput-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    .line 273
    .end local v0    # "copy":[C
    :cond_0
    iget-char v0, p0, Landroid/text/AutoText;->mTrieUsed:C

    .line 274
    .local v0, "ret":C
    iget-char v1, p0, Landroid/text/AutoText;->mTrieUsed:C

    add-int/lit8 v1, v1, 0x4

    int-to-char v1, v1

    iput-char v1, p0, Landroid/text/AutoText;->mTrieUsed:C

    .line 276
    return v0
.end method
