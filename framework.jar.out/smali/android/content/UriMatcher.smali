.class public Landroid/content/UriMatcher;
.super Ljava/lang/Object;
.source "UriMatcher.java"


# static fields
.field private static final EXACT:I = 0x0

.field public static final NO_MATCH:I = -0x1

.field private static final NUMBER:I = 0x1

.field private static final TEXT:I = 0x2


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/UriMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCode:I

.field private mText:Ljava/lang/String;

.field private mWhich:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/UriMatcher;->mCode:I

    .line 140
    iput v0, p0, Landroid/content/UriMatcher;->mWhich:I

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "code"    # I

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Landroid/content/UriMatcher;->mCode:I

    .line 132
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/UriMatcher;->mWhich:I

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 135
    return-void
.end method


# virtual methods
.method public addURI(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 12
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "code"    # I

    .line 162
    if-ltz p3, :cond_a

    .line 166
    const/4 v0, 0x0

    .line 167
    .local v0, "tokens":[Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 168
    move-object v3, p2

    .line 170
    .local v3, "newPath":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v2, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_0

    .line 171
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 173
    :cond_0
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 176
    .end local v3    # "newPath":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    array-length v3, v0

    goto :goto_0

    :cond_2
    move v3, v1

    .line 177
    .local v3, "numTokens":I
    :goto_0
    move-object v4, p0

    .line 178
    .local v4, "node":Landroid/content/UriMatcher;
    const/4 v5, -0x1

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_9

    .line 179
    if-gez v5, :cond_3

    move-object v6, p1

    goto :goto_2

    :cond_3
    aget-object v6, v0, v5

    .line 180
    .local v6, "token":Ljava/lang/String;
    :goto_2
    iget-object v7, v4, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 181
    .local v7, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 184
    .local v8, "numChildren":I
    move v9, v1

    .local v9, "j":I
    :goto_3
    if-ge v9, v8, :cond_5

    .line 185
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/UriMatcher;

    .line 186
    .local v10, "child":Landroid/content/UriMatcher;
    iget-object v11, v10, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 187
    move-object v4, v10

    .line 188
    goto :goto_4

    .line 184
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 191
    .end local v10    # "child":Landroid/content/UriMatcher;
    :cond_5
    :goto_4
    if-ne v9, v8, :cond_8

    .line 193
    new-instance v10, Landroid/content/UriMatcher;

    invoke-direct {v10}, Landroid/content/UriMatcher;-><init>()V

    .line 194
    .restart local v10    # "child":Landroid/content/UriMatcher;
    const-string v11, "#"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 195
    iput v2, v10, Landroid/content/UriMatcher;->mWhich:I

    goto :goto_5

    .line 196
    :cond_6
    const-string v11, "*"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 197
    const/4 v11, 0x2

    iput v11, v10, Landroid/content/UriMatcher;->mWhich:I

    goto :goto_5

    .line 199
    :cond_7
    iput v1, v10, Landroid/content/UriMatcher;->mWhich:I

    .line 201
    :goto_5
    iput-object v6, v10, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 202
    iget-object v11, v4, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    move-object v4, v10

    .line 178
    .end local v6    # "token":Ljava/lang/String;
    .end local v7    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    .end local v8    # "numChildren":I
    .end local v9    # "j":I
    .end local v10    # "child":Landroid/content/UriMatcher;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 206
    .end local v5    # "i":I
    :cond_9
    iput p3, v4, Landroid/content/UriMatcher;->mCode:I

    .line 207
    return-void

    .line 163
    .end local v0    # "tokens":[Ljava/lang/String;
    .end local v3    # "numTokens":I
    .end local v4    # "node":Landroid/content/UriMatcher;
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is invalid: it must be positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public match(Landroid/net/Uri;)I
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;

    .line 219
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 220
    .local v0, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 222
    .local v1, "li":I
    move-object/from16 v2, p0

    .line 224
    .local v2, "node":Landroid/content/UriMatcher;
    if-nez v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 225
    move-object/from16 v3, p0

    iget v4, v3, Landroid/content/UriMatcher;->mCode:I

    return v4

    .line 228
    :cond_0
    move-object/from16 v3, p0

    const/4 v4, -0x1

    move-object v5, v2

    move v2, v4

    .local v2, "i":I
    .local v5, "node":Landroid/content/UriMatcher;
    :goto_0
    if-ge v2, v1, :cond_9

    .line 229
    if-gez v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 230
    .local v6, "u":Ljava/lang/String;
    :goto_1
    iget-object v7, v5, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 231
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    if-nez v7, :cond_2

    .line 232
    goto :goto_6

    .line 234
    :cond_2
    const/4 v5, 0x0

    .line 235
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 236
    .local v8, "lj":I
    const/4 v9, 0x0

    move-object v10, v5

    move v5, v9

    .local v5, "j":I
    .local v10, "node":Landroid/content/UriMatcher;
    :goto_2
    if-ge v5, v8, :cond_7

    .line 237
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/UriMatcher;

    .line 239
    .local v11, "n":Landroid/content/UriMatcher;
    iget v12, v11, Landroid/content/UriMatcher;->mWhich:I

    packed-switch v12, :pswitch_data_0

    goto :goto_4

    .line 256
    :pswitch_0
    move-object v10, v11

    goto :goto_4

    .line 246
    :pswitch_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    .line 247
    .local v12, "lk":I
    move v13, v9

    .local v13, "k":I
    :goto_3
    if-ge v13, v12, :cond_4

    .line 248
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 249
    .local v14, "c":C
    const/16 v15, 0x30

    if-lt v14, v15, :cond_5

    const/16 v15, 0x39

    if-le v14, v15, :cond_3

    .line 250
    goto :goto_4

    .line 247
    .end local v14    # "c":C
    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 253
    .end local v13    # "k":I
    :cond_4
    move-object v10, v11

    .line 254
    goto :goto_4

    .line 241
    .end local v12    # "lk":I
    :pswitch_2
    iget-object v12, v11, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 242
    move-object v10, v11

    .line 259
    :cond_5
    :goto_4
    if-eqz v10, :cond_6

    .line 260
    goto :goto_5

    .line 236
    .end local v11    # "n":Landroid/content/UriMatcher;
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 263
    .end local v10    # "node":Landroid/content/UriMatcher;
    .local v5, "node":Landroid/content/UriMatcher;
    :cond_7
    :goto_5
    move-object v5, v10

    if-nez v5, :cond_8

    .line 264
    return v4

    .line 228
    .end local v6    # "u":Ljava/lang/String;
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    .end local v8    # "lj":I
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 268
    .end local v2    # "i":I
    :cond_9
    :goto_6
    iget v2, v5, Landroid/content/UriMatcher;->mCode:I

    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
