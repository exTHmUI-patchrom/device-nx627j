.class public final Landroid/view/textclassifier/TextClassificationConstants;
.super Ljava/lang/Object;
.source "TextClassificationConstants.java"


# static fields
.field private static final CLASSIFY_TEXT_MAX_RANGE_LENGTH:Ljava/lang/String; = "classify_text_max_range_length"

.field private static final CLASSIFY_TEXT_MAX_RANGE_LENGTH_DEFAULT:I = 0x2710

.field private static final ENTITY_LIST_DEFAULT:Ljava/lang/String; = "entity_list_default"

.field private static final ENTITY_LIST_DEFAULT_VALUE:Ljava/lang/String;

.field private static final ENTITY_LIST_DELIMITER:Ljava/lang/String; = ":"

.field private static final ENTITY_LIST_EDITABLE:Ljava/lang/String; = "entity_list_editable"

.field private static final ENTITY_LIST_NOT_EDITABLE:Ljava/lang/String; = "entity_list_not_editable"

.field private static final GENERATE_LINKS_LOG_SAMPLE_RATE:Ljava/lang/String; = "generate_links_log_sample_rate"

.field private static final GENERATE_LINKS_LOG_SAMPLE_RATE_DEFAULT:I = 0x64

.field private static final GENERATE_LINKS_MAX_TEXT_LENGTH:Ljava/lang/String; = "generate_links_max_text_length"

.field private static final GENERATE_LINKS_MAX_TEXT_LENGTH_DEFAULT:I = 0x186a0

.field private static final LOCAL_TEXT_CLASSIFIER_ENABLED:Ljava/lang/String; = "local_textclassifier_enabled"

.field private static final LOCAL_TEXT_CLASSIFIER_ENABLED_DEFAULT:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "TextClassificationConstants"

.field private static final MODEL_DARK_LAUNCH_ENABLED:Ljava/lang/String; = "model_dark_launch_enabled"

.field private static final MODEL_DARK_LAUNCH_ENABLED_DEFAULT:Z = false

.field private static final SMART_LINKIFY_ENABLED:Ljava/lang/String; = "smart_linkify_enabled"

.field private static final SMART_LINKIFY_ENABLED_DEFAULT:Z = true

.field private static final SMART_SELECTION_ENABLED:Ljava/lang/String; = "smart_selection_enabled"

.field private static final SMART_SELECTION_ENABLED_DEFAULT:Z = true

.field private static final SMART_SELECT_ANIMATION_ENABLED:Ljava/lang/String; = "smart_select_animation_enabled"

.field private static final SMART_SELECT_ANIMATION_ENABLED_DEFAULT:Z = true

.field private static final SMART_TEXT_SHARE_ENABLED:Ljava/lang/String; = "smart_text_share_enabled"

.field private static final SMART_TEXT_SHARE_ENABLED_DEFAULT:Z = true

.field private static final SUGGEST_SELECTION_MAX_RANGE_LENGTH:Ljava/lang/String; = "suggest_selection_max_range_length"

.field private static final SUGGEST_SELECTION_MAX_RANGE_LENGTH_DEFAULT:I = 0x2710

.field private static final SYSTEM_TEXT_CLASSIFIER_ENABLED:Ljava/lang/String; = "system_textclassifier_enabled"

.field private static final SYSTEM_TEXT_CLASSIFIER_ENABLED_DEFAULT:Z = true


# instance fields
.field private final mClassifyTextMaxRangeLength:I

.field private final mEntityListDefault:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntityListEditable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntityListNotEditable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mGenerateLinksLogSampleRate:I

.field private final mGenerateLinksMaxTextLength:I

.field private final mLocalTextClassifierEnabled:Z

.field private final mModelDarkLaunchEnabled:Z

.field private final mSmartLinkifyEnabled:Z

.field private final mSmartSelectionAnimationEnabled:Z

.field private final mSmartSelectionEnabled:Z

.field private final mSmartTextShareEnabled:Z

.field private final mSuggestSelectionMaxRangeLength:I

.field private final mSystemTextClassifierEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 104
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, ":"

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "address"

    .line 105
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    const-string v1, "email"

    .line 106
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    const-string/jumbo v1, "phone"

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    const-string v1, "date"

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    const-string v1, "datetime"

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    const-string v1, "flight"

    .line 111
    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/view/textclassifier/TextClassificationConstants;->ENTITY_LIST_DEFAULT_VALUE:Ljava/lang/String;

    .line 104
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "settings"    # Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    .line 131
    .local v0, "parser":Landroid/util/KeyValueListParser;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v2, "TextClassificationConstants"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad TextClassifier settings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    const-string/jumbo v1, "system_textclassifier_enabled"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSystemTextClassifierEnabled:Z

    .line 139
    const-string/jumbo v1, "local_textclassifier_enabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mLocalTextClassifierEnabled:Z

    .line 142
    const-string/jumbo v1, "model_dark_launch_enabled"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mModelDarkLaunchEnabled:Z

    .line 145
    const-string/jumbo v1, "smart_selection_enabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSmartSelectionEnabled:Z

    .line 148
    const-string/jumbo v1, "smart_text_share_enabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSmartTextShareEnabled:Z

    .line 151
    const-string/jumbo v1, "smart_linkify_enabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSmartLinkifyEnabled:Z

    .line 154
    const-string/jumbo v1, "smart_select_animation_enabled"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSmartSelectionAnimationEnabled:Z

    .line 157
    const-string/jumbo v1, "suggest_selection_max_range_length"

    const/16 v2, 0x2710

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSuggestSelectionMaxRangeLength:I

    .line 160
    const-string v1, "classify_text_max_range_length"

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mClassifyTextMaxRangeLength:I

    .line 163
    const-string v1, "generate_links_max_text_length"

    const v2, 0x186a0

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mGenerateLinksMaxTextLength:I

    .line 166
    const-string v1, "generate_links_log_sample_rate"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mGenerateLinksLogSampleRate:I

    .line 169
    const-string v1, "entity_list_default"

    sget-object v2, Landroid/view/textclassifier/TextClassificationConstants;->ENTITY_LIST_DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/view/textclassifier/TextClassificationConstants;->parseEntityList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mEntityListDefault:Ljava/util/List;

    .line 172
    const-string v1, "entity_list_not_editable"

    sget-object v2, Landroid/view/textclassifier/TextClassificationConstants;->ENTITY_LIST_DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/view/textclassifier/TextClassificationConstants;->parseEntityList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mEntityListNotEditable:Ljava/util/List;

    .line 175
    const-string v1, "entity_list_editable"

    sget-object v2, Landroid/view/textclassifier/TextClassificationConstants;->ENTITY_LIST_DEFAULT_VALUE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/view/textclassifier/TextClassificationConstants;->parseEntityList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/view/textclassifier/TextClassificationConstants;->mEntityListEditable:Ljava/util/List;

    .line 178
    return-void
.end method

.method public static loadFromString(Ljava/lang/String;)Landroid/view/textclassifier/TextClassificationConstants;
    .locals 1
    .param p0, "settings"    # Ljava/lang/String;

    .line 182
    new-instance v0, Landroid/view/textclassifier/TextClassificationConstants;

    invoke-direct {v0, p0}, Landroid/view/textclassifier/TextClassificationConstants;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static parseEntityList(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "listStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 242
    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClassifyTextMaxRangeLength()I
    .locals 1

    .line 218
    iget v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mClassifyTextMaxRangeLength:I

    return v0
.end method

.method public getEntityListDefault()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mEntityListDefault:Ljava/util/List;

    return-object v0
.end method

.method public getEntityListEditable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mEntityListEditable:Ljava/util/List;

    return-object v0
.end method

.method public getEntityListNotEditable()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mEntityListNotEditable:Ljava/util/List;

    return-object v0
.end method

.method public getGenerateLinksLogSampleRate()I
    .locals 1

    .line 226
    iget v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mGenerateLinksLogSampleRate:I

    return v0
.end method

.method public getGenerateLinksMaxTextLength()I
    .locals 1

    .line 222
    iget v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mGenerateLinksMaxTextLength:I

    return v0
.end method

.method public getSuggestSelectionMaxRangeLength()I
    .locals 1

    .line 214
    iget v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSuggestSelectionMaxRangeLength:I

    return v0
.end method

.method public isLocalTextClassifierEnabled()Z
    .locals 1

    .line 186
    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mLocalTextClassifierEnabled:Z

    return v0
.end method

.method public isModelDarkLaunchEnabled()Z
    .locals 1

    .line 194
    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mModelDarkLaunchEnabled:Z

    return v0
.end method

.method public isSmartLinkifyEnabled()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSmartLinkifyEnabled:Z

    return v0
.end method

.method public isSmartSelectionAnimationEnabled()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSmartSelectionAnimationEnabled:Z

    return v0
.end method

.method public isSmartSelectionEnabled()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSmartSelectionEnabled:Z

    return v0
.end method

.method public isSmartTextShareEnabled()Z
    .locals 1

    .line 202
    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSmartTextShareEnabled:Z

    return v0
.end method

.method public isSystemTextClassifierEnabled()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Landroid/view/textclassifier/TextClassificationConstants;->mSystemTextClassifierEnabled:Z

    return v0
.end method
