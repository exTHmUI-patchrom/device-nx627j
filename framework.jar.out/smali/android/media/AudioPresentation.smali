.class public final Landroid/media/AudioPresentation;
.super Ljava/lang/Object;
.source "AudioPresentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioPresentation$MasteringIndicationType;
    }
.end annotation


# static fields
.field public static final MASTERED_FOR_3D:I = 0x3

.field public static final MASTERED_FOR_HEADPHONE:I = 0x4

.field public static final MASTERED_FOR_STEREO:I = 0x1

.field public static final MASTERED_FOR_SURROUND:I = 0x2

.field public static final MASTERING_NOT_INDICATED:I


# instance fields
.field private final mAudioDescriptionAvailable:Z

.field private final mDialogueEnhancementAvailable:Z

.field private final mLabels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLanguage:Ljava/lang/String;

.field private final mMasteringIndication:I

.field private final mPresentationId:I

.field private final mProgramId:I

.field private final mSpokenSubtitlesAvailable:Z


# direct methods
.method public constructor <init>(IILjava/util/Map;Ljava/lang/String;IZZZ)V
    .locals 1
    .param p1, "presentationId"    # I
    .param p2, "programId"    # I
    .param p4, "language"    # Ljava/lang/String;
    .param p5, "masteringIndication"    # I
    .param p6, "audioDescriptionAvailable"    # Z
    .param p7, "spokenSubtitlesAvailable"    # Z
    .param p8, "dialogueEnhancementAvailable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "IZZZ)V"
        }
    .end annotation

    .line 104
    .local p3, "labels":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput p1, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    .line 106
    iput p2, p0, Landroid/media/AudioPresentation;->mProgramId:I

    .line 107
    iput-object p4, p0, Landroid/media/AudioPresentation;->mLanguage:Ljava/lang/String;

    .line 108
    iput p5, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    .line 109
    iput-boolean p6, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    .line 110
    iput-boolean p7, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    .line 111
    iput-boolean p8, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/Map;

    .line 114
    return-void
.end method


# virtual methods
.method public getLabels()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v0, "localeLabels":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/Locale;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/media/AudioPresentation;->mLabels:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 144
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/util/Locale;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 146
    :cond_0
    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 2

    .line 153
    new-instance v0, Ljava/util/Locale;

    iget-object v1, p0, Landroid/media/AudioPresentation;->mLanguage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getMasteringIndication()I
    .locals 1

    .line 163
    iget v0, p0, Landroid/media/AudioPresentation;->mMasteringIndication:I

    return v0
.end method

.method public getPresentationId()I
    .locals 1

    .line 123
    iget v0, p0, Landroid/media/AudioPresentation;->mPresentationId:I

    return v0
.end method

.method public getProgramId()I
    .locals 1

    .line 133
    iget v0, p0, Landroid/media/AudioPresentation;->mProgramId:I

    return v0
.end method

.method public hasAudioDescription()Z
    .locals 1

    .line 171
    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mAudioDescriptionAvailable:Z

    return v0
.end method

.method public hasDialogueEnhancement()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mDialogueEnhancementAvailable:Z

    return v0
.end method

.method public hasSpokenSubtitles()Z
    .locals 1

    .line 179
    iget-boolean v0, p0, Landroid/media/AudioPresentation;->mSpokenSubtitlesAvailable:Z

    return v0
.end method
