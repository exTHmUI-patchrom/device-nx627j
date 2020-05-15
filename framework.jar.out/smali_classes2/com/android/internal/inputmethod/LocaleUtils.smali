.class public final Lcom/android/internal/inputmethod/LocaleUtils;
.super Ljava/lang/Object;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;,
        Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B
    .locals 4
    .param p0, "supported"    # Landroid/icu/util/ULocale;
    .param p1, "desired"    # Landroid/icu/util/ULocale;

    .line 55
    invoke-virtual {p0, p1}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    .line 56
    return v1

    .line 61
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "supportedScript":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "supportedCountry":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 73
    :cond_2
    return v1

    .line 69
    :cond_3
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 64
    .end local v2    # "supportedCountry":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method public static filterByLanguage(Ljava/util/List;Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;Landroid/os/LocaleList;Ljava/util/ArrayList;)V
    .locals 16
    .param p2, "preferredLocales"    # Landroid/os/LocaleList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor<",
            "TT;>;",
            "Landroid/os/LocaleList;",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    .local p0, "sources":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "extractor":Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;, "Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor<TT;>;"
    .local p3, "dest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    move-object/from16 v0, p0

    .line 158
    invoke-virtual/range {p2 .. p2}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    return-void

    .line 162
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/LocaleList;->size()I

    move-result v1

    .line 163
    .local v1, "numPreferredLocales":I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v2, "scoreboard":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;>;"
    new-array v3, v1, [B

    .line 165
    .local v3, "score":[B
    new-array v4, v1, [Landroid/icu/util/ULocale;

    .line 167
    .local v4, "preferredULocaleCache":[Landroid/icu/util/ULocale;
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v5

    .line 168
    .local v5, "sourceSize":I
    const/4 v6, 0x0

    move v7, v6

    .local v7, "i":I
    :goto_0
    if-ge v7, v5, :cond_8

    .line 169
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v9, p1

    invoke-interface {v9, v8}, Lcom/android/internal/inputmethod/LocaleUtils$LocaleExtractor;->get(Ljava/lang/Object;)Ljava/util/Locale;

    move-result-object v8

    .line 170
    .local v8, "locale":Ljava/util/Locale;
    if-nez v8, :cond_1

    .line 171
    nop

    .line 168
    move-object/from16 v12, p2

    goto :goto_3

    .line 174
    :cond_1
    const/4 v10, 0x1

    .line 175
    .local v10, "canSkip":Z
    move v11, v10

    move v10, v6

    .local v10, "j":I
    .local v11, "canSkip":Z
    :goto_1
    if-ge v10, v1, :cond_5

    .line 176
    move-object/from16 v12, p2

    invoke-virtual {v12, v10}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v13

    .line 177
    .local v13, "preferredLocale":Ljava/util/Locale;
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 178
    aput-byte v6, v3, v10

    .line 179
    goto :goto_2

    .line 181
    :cond_2
    aget-object v14, v4, v10

    if-nez v14, :cond_3

    .line 182
    nop

    .line 183
    invoke-static {v13}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v14

    .line 182
    invoke-static {v14}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v14

    aput-object v14, v4, v10

    .line 185
    :cond_3
    aget-object v14, v4, v10

    .line 187
    invoke-static {v8}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v15

    invoke-static {v15}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v15

    .line 185
    invoke-static {v14, v15}, Lcom/android/internal/inputmethod/LocaleUtils;->calculateMatchingSubScore(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)B

    move-result v14

    aput-byte v14, v3, v10

    .line 188
    if-eqz v11, :cond_4

    aget-byte v14, v3, v10

    if-eqz v14, :cond_4

    .line 189
    const/4 v11, 0x0

    .line 175
    .end local v13    # "preferredLocale":Ljava/util/Locale;
    :cond_4
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 192
    .end local v10    # "j":I
    :cond_5
    move-object/from16 v12, p2

    if-eqz v11, :cond_6

    .line 193
    goto :goto_3

    .line 196
    :cond_6
    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    .line 197
    .local v10, "lang":Ljava/lang/String;
    invoke-virtual {v2, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    .line 198
    .local v13, "bestScore":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    if-nez v13, :cond_7

    .line 199
    new-instance v14, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    invoke-direct {v14, v3, v7}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;-><init>([BI)V

    invoke-virtual {v2, v10, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 201
    :cond_7
    invoke-virtual {v13, v3, v7}, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->updateIfBetter([BI)V

    .line 168
    .end local v8    # "locale":Ljava/util/Locale;
    .end local v10    # "lang":Ljava/lang/String;
    .end local v11    # "canSkip":Z
    .end local v13    # "bestScore":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 205
    .end local v7    # "i":I
    :cond_8
    move-object/from16 v9, p1

    move-object/from16 v12, p2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v8

    new-array v8, v8, [Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    invoke-interface {v7, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;

    .line 206
    .local v7, "result":[Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 207
    array-length v8, v7

    :goto_4
    if-ge v6, v8, :cond_9

    aget-object v10, v7, v6

    .line 208
    .local v10, "entry":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    iget v11, v10, Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;->mIndex:I

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v13, p3

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v10    # "entry":Lcom/android/internal/inputmethod/LocaleUtils$ScoreEntry;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 210
    :cond_9
    move-object/from16 v13, p3

    return-void
.end method
