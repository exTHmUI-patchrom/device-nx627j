.class public abstract Landroid/service/textservice/SpellCheckerService$Session;
.super Ljava/lang/Object;
.source "SpellCheckerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Session"
.end annotation


# instance fields
.field private mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

.field private volatile mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .line 232
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$Session;->mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    invoke-virtual {v0}, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->getBundle()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$Session;->mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    invoke-virtual {v0}, Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;->getLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCancel()V
    .locals 0

    .line 211
    return-void
.end method

.method public onClose()V
    .locals 0

    .line 219
    return-void
.end method

.method public abstract onCreate()V
.end method

.method public onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)[Landroid/view/textservice/SentenceSuggestionsInfo;
    .locals 10
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I

    .line 166
    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    .line 173
    :cond_0
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    if-nez v0, :cond_2

    .line 174
    monitor-enter p0

    .line 175
    :try_start_0
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    if-nez v0, :cond_1

    .line 176
    invoke-virtual {p0}, Landroid/service/textservice/SpellCheckerService$Session;->getLocale()Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "localeStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 178
    new-instance v1, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;-><init>(Ljava/util/Locale;)V

    iput-object v1, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    .line 181
    .end local v0    # "localeStr":Ljava/lang/String;
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 183
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    if-nez v0, :cond_3

    .line 184
    sget-object v0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    return-object v0

    .line 186
    :cond_3
    array-length v0, p1

    .line 187
    .local v0, "infosSize":I
    new-array v1, v0, [Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 188
    .local v1, "retval":[Landroid/view/textservice/SentenceSuggestionsInfo;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 189
    iget-object v4, p0, Landroid/service/textservice/SpellCheckerService$Session;->mSentenceLevelAdapter:Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;

    aget-object v5, p1, v3

    .line 190
    invoke-static {v4, v5}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->access$000(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    move-result-object v4

    .line 191
    .local v4, "textInfoParams":Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    iget-object v5, v4, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mItems:Ljava/util/ArrayList;

    .line 193
    .local v5, "mItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 194
    .local v6, "itemsSize":I
    new-array v7, v6, [Landroid/view/textservice/TextInfo;

    .line 195
    .local v7, "splitTextInfos":[Landroid/view/textservice/TextInfo;
    move v8, v2

    .local v8, "j":I
    :goto_2
    if-ge v8, v6, :cond_4

    .line 196
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    iget-object v9, v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mTextInfo:Landroid/view/textservice/TextInfo;

    aput-object v9, v7, v8

    .line 195
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 198
    .end local v8    # "j":I
    :cond_4
    nop

    .line 199
    const/4 v8, 0x1

    invoke-virtual {p0, v7, p2, v8}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;

    move-result-object v8

    .line 198
    invoke-static {v4, v8}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->reconstructSuggestions(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;[Landroid/view/textservice/SuggestionsInfo;)Landroid/view/textservice/SentenceSuggestionsInfo;

    move-result-object v8

    aput-object v8, v1, v3

    .line 188
    .end local v4    # "textInfoParams":Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .end local v5    # "mItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;>;"
    .end local v6    # "itemsSize":I
    .end local v7    # "splitTextInfos":[Landroid/view/textservice/TextInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 202
    .end local v3    # "i":I
    :cond_5
    return-object v1

    .line 167
    .end local v0    # "infosSize":I
    .end local v1    # "retval":[Landroid/view/textservice/SentenceSuggestionsInfo;
    :cond_6
    :goto_3
    sget-object v0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    return-object v0
.end method

.method public abstract onGetSuggestions(Landroid/view/textservice/TextInfo;I)Landroid/view/textservice/SuggestionsInfo;
.end method

.method public onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)[Landroid/view/textservice/SuggestionsInfo;
    .locals 6
    .param p1, "textInfos"    # [Landroid/view/textservice/TextInfo;
    .param p2, "suggestionsLimit"    # I
    .param p3, "sequentialWords"    # Z

    .line 140
    array-length v0, p1

    .line 141
    .local v0, "length":I
    new-array v1, v0, [Landroid/view/textservice/SuggestionsInfo;

    .line 142
    .local v1, "retval":[Landroid/view/textservice/SuggestionsInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 143
    aget-object v3, p1, v2

    invoke-virtual {p0, v3, p2}, Landroid/service/textservice/SpellCheckerService$Session;->onGetSuggestions(Landroid/view/textservice/TextInfo;I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v3

    aput-object v3, v1, v2

    .line 144
    aget-object v3, v1, v2

    aget-object v4, p1, v2

    .line 145
    invoke-virtual {v4}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v4

    aget-object v5, p1, v2

    invoke-virtual {v5}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v5

    .line 144
    invoke-virtual {v3, v4, v5}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    .line 142
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public final setInternalISpellCheckerSession(Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;)V
    .locals 0
    .param p1, "session"    # Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    .line 107
    iput-object p1, p0, Landroid/service/textservice/SpellCheckerService$Session;->mInternalSession:Landroid/service/textservice/SpellCheckerService$InternalISpellCheckerSession;

    .line 108
    return-void
.end method
