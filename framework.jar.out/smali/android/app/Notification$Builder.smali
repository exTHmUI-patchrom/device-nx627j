.class public Landroid/app/Notification$Builder;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field public static final EXTRA_REBUILD_BIG_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.bigViewActionCount"

.field public static final EXTRA_REBUILD_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.contentViewActionCount"

.field public static final EXTRA_REBUILD_HEADS_UP_CONTENT_VIEW_ACTION_COUNT:Ljava/lang/String; = "android.rebuild.hudViewActionCount"

.field private static final LIGHTNESS_TEXT_DIFFERENCE_DARK:I = -0xa

.field private static final LIGHTNESS_TEXT_DIFFERENCE_LIGHT:I = 0x14

.field private static final MAX_ACTION_BUTTONS:I = 0x3

.field private static final USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z


# instance fields
.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundColor:I

.field private mCachedAmbientColor:I

.field private mCachedAmbientColorIsFor:I

.field private mCachedContrastColor:I

.field private mCachedContrastColorIsFor:I

.field private mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

.field private mContext:Landroid/content/Context;

.field private mForegroundColor:I

.field private mInNightMode:Z

.field private mIsLegacy:Z

.field private mIsLegacyInitialized:Z

.field private mN:Landroid/app/Notification;

.field private mNeutralColor:I

.field private mOriginalActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Notification$Action;",
            ">;"
        }
    .end annotation
.end field

.field mParams:Landroid/app/Notification$StandardTemplateParams;

.field private mPersonList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/Person;",
            ">;"
        }
    .end annotation
.end field

.field private mPrimaryTextColor:I

.field private mRebuildStyledRemoteViews:Z

.field private mSecondaryTextColor:I

.field private mStyle:Landroid/app/Notification$Style;

.field private mTextColorsAreForBackground:I

.field private mThemeContext:Landroid/content/Context;

.field private mTintActionButtons:Z

.field private mUserExtras:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3163
    const-string/jumbo v0, "notifications.only_title"

    .line 3164
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    .line 3163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3248
    const/4 v0, 0x0

    check-cast v0, Landroid/app/Notification;

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 3249
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toAdopt"    # Landroid/app/Notification;

    .line 3256
    invoke-direct {p0, p1, p2, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;Landroid/content/Context;)V

    .line 3257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/Notification;Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "toAdopt"    # Landroid/app/Notification;
    .param p3, "themeContext"    # Landroid/content/Context;

    .line 3264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 3184
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 3185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    .line 3193
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    .line 3194
    iput v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    .line 3198
    iput v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColor:I

    .line 3199
    iput v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    .line 3203
    iput v0, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    .line 3209
    new-instance v1, Landroid/app/Notification$StandardTemplateParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/app/Notification$StandardTemplateParams;-><init>(Landroid/app/Notification$1;)V

    iput-object v1, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    .line 3210
    iput v0, p0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    .line 3211
    iput v0, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 3212
    iput v0, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 3213
    iput v0, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    .line 3214
    iput v0, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    .line 3266
    iput-object p1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 3269
    iput-object p3, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    .line 3270
    iget-object v1, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3272
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x11200c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    .line 3274
    const v2, 0x1120067

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3275
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 3276
    .local v2, "currentConfig":Landroid/content/res/Configuration;
    iget v4, v2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v4, v4, 0x30

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .line 3281
    .end local v2    # "currentConfig":Landroid/content/res/Configuration;
    :cond_1
    iget-boolean v2, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil;->useDarkBackground()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v2, v0

    :goto_2
    iput-boolean v2, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .line 3284
    if-nez p2, :cond_5

    .line 3285
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 3286
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x18

    if-ge v2, v4, :cond_4

    .line 3287
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.showWhen"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3289
    :cond_4
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v3, v0, Landroid/app/Notification;->priority:I

    .line 3290
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v3, v0, Landroid/app/Notification;->visibility:I

    goto/16 :goto_3

    .line 3292
    :cond_5
    iput-object p2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    .line 3293
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v2, :cond_6

    .line 3294
    iget-object v2, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-static {v2, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3297
    :cond_6
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.people.list"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3298
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.people.list"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3299
    .local v2, "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    iget-object v4, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3302
    .end local v2    # "people":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Person;>;"
    :cond_7
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v2}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-nez v2, :cond_8

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    if-eqz v2, :cond_8

    .line 3303
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 3306
    :cond_8
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v2}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v2

    if-nez v2, :cond_9

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9

    .line 3307
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 3310
    :cond_9
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.template"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3311
    .local v2, "templateClass":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 3312
    nop

    .line 3313
    invoke-static {v2}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 3314
    .local v4, "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    if-nez v4, :cond_a

    .line 3315
    const-string v0, "Notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown style class: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 3318
    :cond_a
    :try_start_0
    new-array v5, v3, [Ljava/lang/Class;

    .line 3319
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    .line 3320
    .local v5, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 3321
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Style;

    .line 3322
    .local v0, "style":Landroid/app/Notification$Style;
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v3}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 3324
    if-eqz v0, :cond_b

    .line 3325
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 3329
    .end local v0    # "style":Landroid/app/Notification$Style;
    .end local v5    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Landroid/app/Notification$Style;>;"
    :cond_b
    goto :goto_3

    .line 3327
    :catch_0
    move-exception v0

    .line 3328
    .local v0, "t":Ljava/lang/Throwable;
    const-string v3, "Notification"

    const-string v5, "Could not create Style"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3334
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v2    # "templateClass":Ljava/lang/String;
    .end local v4    # "styleClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/app/Notification$Style;>;"
    :cond_c
    :goto_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "channelId"    # Ljava/lang/String;

    .line 3238
    const/4 v0, 0x0

    check-cast v0, Landroid/app/Notification;

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;)V

    .line 3239
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p2}, Landroid/app/Notification;->access$502(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3240
    return-void
.end method

.method static synthetic access$2000(Landroid/app/Notification$Builder;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3144
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Landroid/app/Notification$Builder;ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/app/Notification$TemplateBindResult;

    .line 3144
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3144
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigPictureLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 3144
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 3144
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Landroid/widget/RemoteViews;
    .param p2, "x2"    # I

    .line 3144
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    return-void
.end method

.method static synthetic access$2600(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3144
    iget-object v0, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 3144
    iput-object p1, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3144
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/app/Notification$Builder;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 3144
    iput-object p1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2900(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3144
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigTextLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/app/Notification$Builder;)Landroid/app/Notification;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3144
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/app/Notification$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3144
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/app/Notification$Builder;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3144
    iget-object v0, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3500(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3144
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getMessagingLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Landroid/app/Notification$Builder;ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "x3"    # Landroid/app/Notification$TemplateBindResult;

    .line 3144
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Landroid/app/Notification$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3144
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3144
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getInboxLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Landroid/app/Notification$Builder;)Z
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3144
    invoke-direct {p0}, Landroid/app/Notification$Builder;->shouldTintActionButtons()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Landroid/app/Notification$Builder;IZLandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/app/Notification$TemplateBindResult;

    .line 3144
    invoke-direct {p0, p1, p2, p3}, Landroid/app/Notification$Builder;->applyStandardTemplate(IZLandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3144
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Landroid/app/Notification$Builder;)I
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;

    .line 3144
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Landroid/app/Notification$Builder;ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/app/Notification$TemplateBindResult;

    .line 3144
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Landroid/app/Notification$Builder;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Z

    .line 3144
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 7
    .param p1, "resId"    # I
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 4437
    new-instance v0, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 4439
    .local v0, "contentView":Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->resetStandardTemplate(Landroid/widget/RemoteViews;)V

    .line 4441
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 4442
    .local v1, "ex":Landroid/os/Bundle;
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->updateBackgroundColor(Landroid/widget/RemoteViews;)V

    .line 4443
    iget-boolean v2, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    iget-object v3, p2, Landroid/app/Notification$StandardTemplateParams;->headerTextSecondary:Ljava/lang/CharSequence;

    invoke-direct {p0, v0, v2, v3}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;ZLjava/lang/CharSequence;)V

    .line 4444
    invoke-direct {p0, v0, p2, p3}, Landroid/app/Notification$Builder;->bindLargeIconAndReply(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V

    .line 4446
    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->handleNubiaTitleIcon(Landroid/widget/RemoteViews;Landroid/os/Bundle;)Z

    move-result v2

    .line 4448
    .local v2, "showNubiaTitleIcon":Z
    iget-boolean v3, p2, Landroid/app/Notification$StandardTemplateParams;->hasProgress:Z

    invoke-direct {p0, v3, v0, v1}, Landroid/app/Notification$Builder;->handleProgressBar(ZLandroid/widget/RemoteViews;Landroid/os/Bundle;)Z

    move-result v3

    .line 4449
    .local v3, "showProgress":Z
    iget-object v4, p2, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    .line 4450
    const v4, 0x1020016

    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4451
    iget-object v6, p2, Landroid/app/Notification$StandardTemplateParams;->title:Ljava/lang/CharSequence;

    invoke-direct {p0, v6}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4452
    iget-boolean v6, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez v6, :cond_0

    .line 4453
    invoke-direct {p0, v0, v4}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    .line 4455
    :cond_0
    nop

    .line 4457
    if-nez v3, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 4460
    :cond_1
    const/4 v6, -0x1

    goto :goto_1

    .line 4459
    :cond_2
    :goto_0
    const/4 v6, -0x2

    .line 4455
    :goto_1
    invoke-virtual {v0, v4, v6}, Landroid/widget/RemoteViews;->setViewLayoutWidth(II)V

    .line 4462
    :cond_3
    iget-object v4, p2, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    .line 4463
    if-eqz v3, :cond_4

    const v4, 0x102045c

    goto :goto_2

    .line 4464
    :cond_4
    const v4, 0x1020440

    .line 4465
    .local v4, "textId":I
    :goto_2
    iget-object v6, p2, Landroid/app/Notification$StandardTemplateParams;->text:Ljava/lang/CharSequence;

    invoke-direct {p0, v6}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4466
    iget-boolean v6, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez v6, :cond_5

    .line 4467
    invoke-direct {p0, v0, v4}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4469
    :cond_5
    invoke-virtual {v0, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4472
    .end local v4    # "textId":I
    :cond_6
    if-nez v3, :cond_8

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v4}, Landroid/app/Notification;->access$1600(Landroid/app/Notification;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    goto :goto_4

    :cond_8
    :goto_3
    const/4 v5, 0x1

    :goto_4
    invoke-virtual {p0, v0, v5}, Landroid/app/Notification$Builder;->setContentMinHeight(Landroid/widget/RemoteViews;Z)V

    .line 4474
    return-object v0
.end method

.method private applyStandardTemplate(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 2
    .param p1, "resId"    # I
    .param p2, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 4420
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 4421
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hideReplyIcon(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 4420
    invoke-direct {p0, p1, v0, p2}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplate(IZLandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "resId"    # I
    .param p2, "hasProgress"    # Z
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 4431
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 4432
    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 4431
    invoke-direct {p0, p1, v0, p3}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 15
    .param p1, "layoutId"    # I
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    move-object v0, p0

    move-object/from16 v1, p2

    .line 4976
    invoke-direct/range {p0 .. p3}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 4978
    .local v2, "big":Landroid/widget/RemoteViews;
    invoke-direct {v0, v2}, Landroid/app/Notification$Builder;->resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V

    .line 4980
    const/4 v3, 0x0

    .line 4982
    .local v3, "validRemoteInput":Z
    iget-object v4, v0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 4987
    .local v4, "N":I
    const/4 v5, 0x0

    .line 4989
    .local v5, "emphazisedMode":Z
    const-string/jumbo v6, "setEmphasizedMode"

    const v7, 0x102018c

    invoke-virtual {v2, v7, v6, v5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 4990
    const/16 v6, 0x8

    const v8, 0x102018d

    const/4 v9, 0x0

    if-lez v4, :cond_3

    .line 4991
    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4992
    invoke-virtual {v2, v7, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4993
    const v8, 0x102033b

    invoke-virtual {v2, v8, v9}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    .line 4994
    const/4 v8, 0x3

    if-le v4, v8, :cond_0

    const/4 v4, 0x3

    .line 4995
    :cond_0
    move v8, v3

    move v3, v9

    .line 4995
    .local v3, "i":I
    .local v8, "validRemoteInput":Z
    :goto_0
    if-ge v3, v4, :cond_2

    .line 4996
    iget-object v10, v0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/Notification$Action;

    .line 4997
    .local v10, "action":Landroid/app/Notification$Action;
    invoke-direct {v0, v10}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v11

    .line 4998
    .local v11, "actionHasValidInput":Z
    or-int/2addr v8, v11

    .line 5000
    iget-boolean v12, v1, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    invoke-direct {v0, v10, v5, v12}, Landroid/app/Notification$Builder;->generateActionButton(Landroid/app/Notification$Action;ZZ)Landroid/widget/RemoteViews;

    move-result-object v12

    .line 5002
    .local v12, "button":Landroid/widget/RemoteViews;
    if-eqz v11, :cond_1

    if-nez v5, :cond_1

    .line 5004
    const v13, 0x1020175

    const-string/jumbo v14, "setBackgroundResource"

    invoke-virtual {v12, v13, v14, v9}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5006
    :cond_1
    invoke-virtual {v2, v7, v12}, Landroid/widget/RemoteViews;->addView(ILandroid/widget/RemoteViews;)V

    .line 4995
    .end local v10    # "action":Landroid/app/Notification$Action;
    .end local v11    # "actionHasValidInput":Z
    .end local v12    # "button":Landroid/widget/RemoteViews;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5012
    .end local v3    # "i":I
    :cond_2
    move v3, v8

    goto :goto_1

    .line 5009
    .end local v8    # "validRemoteInput":Z
    .local v3, "validRemoteInput":Z
    :cond_3
    invoke-virtual {v2, v8, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5012
    :goto_1
    iget-object v7, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "android.remoteInputHistory"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v7

    .line 5013
    .local v7, "replyText":[Ljava/lang/CharSequence;
    iget-boolean v8, v1, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-nez v8, :cond_6

    if-eqz v3, :cond_6

    if-eqz v7, :cond_6

    array-length v8, v7

    if-lez v8, :cond_6

    aget-object v8, v7, v9

    .line 5014
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    iget v8, v1, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-lez v8, :cond_6

    .line 5016
    iget-object v8, v0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v10, "android.remoteInputSpinner"

    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 5017
    .local v8, "showSpinner":Z
    const v10, 0x102033f

    invoke-virtual {v2, v10, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5018
    const v10, 0x1020342

    invoke-virtual {v2, v10, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5020
    aget-object v10, v7, v9

    .line 5021
    invoke-direct {v0, v10}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 5020
    const v11, 0x1020341

    invoke-virtual {v2, v11, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5022
    invoke-direct {v0, v2, v11}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 5023
    nop

    .line 5024
    if-eqz v8, :cond_4

    .line 5023
    move v6, v9

    goto :goto_2

    .line 5024
    :cond_4
    nop

    .line 5023
    :goto_2
    const v10, 0x1020340

    invoke-virtual {v2, v10, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5025
    nop

    .line 5028
    invoke-direct {v0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v6

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v6

    .line 5027
    :goto_3
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 5025
    invoke-virtual {v2, v10, v6}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 5030
    array-length v6, v7

    const/4 v10, 0x1

    if-le v6, v10, :cond_6

    aget-object v6, v7, v10

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget v6, v1, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-le v6, v10, :cond_6

    .line 5032
    const v6, 0x1020343

    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5033
    aget-object v10, v7, v10

    .line 5034
    invoke-direct {v0, v10}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 5033
    invoke-virtual {v2, v6, v10}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5035
    invoke-direct {v0, v2, v6}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 5037
    array-length v6, v7

    const/4 v10, 0x2

    if-le v6, v10, :cond_6

    aget-object v6, v7, v10

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    iget v6, v1, Landroid/app/Notification$StandardTemplateParams;->maxRemoteInputHistory:I

    if-le v6, v10, :cond_6

    .line 5039
    const v6, 0x1020344

    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5041
    aget-object v9, v7, v10

    .line 5042
    invoke-direct {v0, v9}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 5041
    invoke-virtual {v2, v6, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5043
    invoke-direct {v0, v2, v6}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 5048
    .end local v8    # "showSpinner":Z
    :cond_6
    return-object v2
.end method

.method private applyStandardTemplateWithActions(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;
    .locals 1
    .param p1, "layoutId"    # I
    .param p2, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 4970
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method private bindActivePermissions(Landroid/widget/RemoteViews;Z)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "ambient"    # Z

    .line 4789
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getNeutralColor()I

    move-result v0

    .line 4790
    .local v0, "color":I
    :goto_0
    const v1, 0x10201eb

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 4791
    const v1, 0x102030a

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 4792
    const v1, 0x1020362

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v3, v0, v2}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 4793
    return-void
.end method

.method private bindExpandButton(Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 4796
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getSecondaryTextColor()I

    move-result v0

    .line 4797
    .local v0, "color":I
    :goto_0
    const v1, 0x102023e

    const/4 v2, 0x0

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 4799
    const v1, 0x102033d

    const-string/jumbo v2, "setOriginalNotificationColor"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4801
    return-void
.end method

.method private bindHeaderAppName(Landroid/widget/RemoteViews;Z)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "ambient"    # Z

    .line 4894
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x10201af

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4895
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 4896
    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    goto :goto_1

    .line 4898
    :cond_0
    nop

    .line 4899
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getSecondaryTextColor()I

    move-result v0

    .line 4898
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 4901
    :goto_1
    return-void
.end method

.method private bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;)V
    .locals 8
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 4804
    invoke-direct {p0}, Landroid/app/Notification$Builder;->showsTimeOrChronometer()Z

    move-result v0

    const v1, 0x102045f

    if-eqz v0, :cond_1

    .line 4805
    const v0, 0x1020463

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4806
    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4807
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.showChronometer"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4808
    const v0, 0x10201fa

    invoke-virtual {p1, v0, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4809
    const-string/jumbo v1, "setBase"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    .line 4810
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 4809
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 4811
    const-string/jumbo v1, "setStarted"

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 4812
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.chronometerCountDown"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 4813
    .local v1, "countsDown":Z
    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setChronometerCountDown(IZ)V

    .line 4814
    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4815
    .end local v1    # "countsDown":Z
    goto :goto_1

    .line 4816
    :cond_0
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4817
    const-string/jumbo v0, "setTime"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 4818
    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    goto :goto_1

    .line 4823
    :cond_1
    const-string/jumbo v0, "setTime"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-wide v2, v2, Landroid/app/Notification;->when:J

    goto :goto_0

    :cond_2
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v2}, Landroid/app/Notification;->access$1800(Landroid/app/Notification;)J

    move-result-wide v2

    :goto_0
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/widget/RemoteViews;->setLong(ILjava/lang/String;J)V

    .line 4825
    :goto_1
    return-void
.end method

.method private bindHeaderText(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 4828
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.subText"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4829
    .local v0, "headerText":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-boolean v1, v1, Landroid/app/Notification$Style;->mSummaryTextSet:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 4830
    invoke-virtual {v1}, Landroid/app/Notification$Style;->hasSummaryInHeader()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4831
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v0, v1, Landroid/app/Notification$Style;->mSummaryText:Ljava/lang/CharSequence;

    .line 4833
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 4834
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.infoText"

    .line 4835
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4836
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.infoText"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4838
    :cond_1
    if-eqz v0, :cond_2

    .line 4840
    nop

    .line 4841
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4840
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x102028a

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4842
    invoke-direct {p0, p1, v2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4843
    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4844
    const v2, 0x102028b

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4845
    invoke-direct {p0, p1, v2}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4847
    :cond_2
    return-void
.end method

.method private bindHeaderTextSecondary(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "secondaryText"    # Ljava/lang/CharSequence;

    .line 4850
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4851
    nop

    .line 4852
    invoke-direct {p0, p2}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4851
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x102028c

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4853
    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4854
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4855
    const v1, 0x102028d

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4856
    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V

    .line 4858
    :cond_0
    return-void
.end method

.method private bindLargeIcon(Landroid/widget/RemoteViews;Z)Z
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "hideLargeIcon"    # Z

    .line 4718
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 4719
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->access$1102(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 4721
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4722
    .local v0, "showLargeIcon":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 4723
    const v2, 0x10203b8

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4724
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 4725
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v1}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Landroid/app/Notification$Builder;->processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V

    .line 4727
    :cond_2
    return v0
.end method

.method private bindLargeIconAndReply(Landroid/widget/RemoteViews;Landroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "p"    # Landroid/app/Notification$StandardTemplateParams;
    .param p3, "result"    # Landroid/app/Notification$TemplateBindResult;

    .line 4668
    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->hideLargeIcon:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->bindLargeIcon(Landroid/widget/RemoteViews;Z)Z

    move-result v0

    .line 4669
    .local v0, "largeIconShown":Z
    iget-boolean v3, p2, Landroid/app/Notification$StandardTemplateParams;->hideReplyIcon:Z

    if-nez v3, :cond_3

    iget-boolean v3, p2, Landroid/app/Notification$StandardTemplateParams;->ambient:Z

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    nop

    :cond_3
    :goto_2
    invoke-direct {p0, p1, v1}, Landroid/app/Notification$Builder;->bindReplyIcon(Landroid/widget/RemoteViews;Z)Z

    move-result v1

    .line 4670
    .local v1, "replyIconShown":Z
    const v3, 0x10203b9

    .line 4671
    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v2, 0x8

    nop

    .line 4670
    :cond_5
    :goto_3
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4672
    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->calculateMarginEnd(ZZ)I

    move-result v2

    .line 4673
    .local v2, "marginEnd":I
    const v3, 0x10202e3

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginEnd(II)V

    .line 4674
    const v3, 0x1020440

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginEnd(II)V

    .line 4675
    const v3, 0x102000d

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewLayoutMarginEnd(II)V

    .line 4676
    if-eqz p3, :cond_6

    .line 4677
    invoke-virtual {p3, v2}, Landroid/app/Notification$TemplateBindResult;->setIconMarginEnd(I)V

    .line 4679
    :cond_6
    return-void
.end method

.method private bindNotificationHeader(Landroid/widget/RemoteViews;ZLjava/lang/CharSequence;)V
    .locals 2
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "ambient"    # Z
    .param p3, "secondaryHeaderText"    # Ljava/lang/CharSequence;

    .line 4774
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindSmallIcon(Landroid/widget/RemoteViews;Z)V

    .line 4775
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindHeaderAppName(Landroid/widget/RemoteViews;Z)V

    .line 4776
    if-nez p2, :cond_0

    .line 4778
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderText(Landroid/widget/RemoteViews;)V

    .line 4779
    invoke-direct {p0, p1, p3}, Landroid/app/Notification$Builder;->bindHeaderTextSecondary(Landroid/widget/RemoteViews;Ljava/lang/CharSequence;)V

    .line 4780
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindHeaderChronometerAndTime(Landroid/widget/RemoteViews;)V

    .line 4781
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindProfileBadge(Landroid/widget/RemoteViews;)V

    .line 4783
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/Notification$Builder;->bindActivePermissions(Landroid/widget/RemoteViews;Z)V

    .line 4784
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->bindExpandButton(Landroid/widget/RemoteViews;)V

    .line 4785
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/app/Notification;->access$1402(Landroid/app/Notification;Z)Z

    .line 4786
    return-void
.end method

.method private bindProfileBadge(Landroid/widget/RemoteViews;)V
    .locals 5
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 4355
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadge()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 4357
    .local v0, "profileBadge":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 4358
    const v1, 0x1020393

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 4359
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4360
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4361
    nop

    .line 4362
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 4361
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 4365
    :cond_0
    return-void
.end method

.method private bindReplyIcon(Landroid/widget/RemoteViews;Z)Z
    .locals 6
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "hideReplyIcon"    # Z

    .line 4735
    xor-int/lit8 v0, p2, 0x1

    .line 4736
    .local v0, "actionVisible":Z
    const/4 v1, 0x0

    .line 4737
    .local v1, "action":Landroid/app/Notification$Action;
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4738
    invoke-direct {p0}, Landroid/app/Notification$Builder;->findReplyAction()Landroid/app/Notification$Action;

    move-result-object v1

    .line 4739
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    move v0, v3

    .line 4741
    :cond_1
    const v3, 0x10203ae

    if-eqz v0, :cond_2

    .line 4742
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4743
    nop

    .line 4745
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getNeutralColor()I

    move-result v4

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 4743
    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 4747
    iget-object v4, v1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 4748
    invoke-static {v1}, Landroid/app/Notification$Action;->access$1700(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    goto :goto_1

    .line 4750
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    .line 4752
    :goto_1
    nop

    .line 4753
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    .line 4752
    :goto_2
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4754
    return v0
.end method

.method private bindSmallIcon(Landroid/widget/RemoteViews;Z)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "ambient"    # Z

    .line 4904
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$1900(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->icon:I

    if-eqz v0, :cond_0

    .line 4905
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->access$1902(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 4911
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getThemeSamllIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    const v1, 0x1020006

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 4912
    const-string/jumbo v0, "setImageLevel"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->iconLevel:I

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4913
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getThemeSamllIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/app/Notification$Builder;->processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Z)V

    .line 4915
    return-void
.end method

.method private calculateMarginEnd(ZZ)I
    .locals 5
    .param p1, "largeIconShown"    # Z
    .param p2, "replyIconShown"    # Z

    .line 4682
    const/4 v0, 0x0

    .line 4683
    .local v0, "marginEnd":I
    iget-object v1, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105012f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4685
    .local v1, "contentMargin":I
    iget-object v2, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050152

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 4687
    .local v2, "iconSize":I
    if-eqz p2, :cond_0

    .line 4689
    add-int/2addr v0, v2

    .line 4691
    iget-object v3, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050151

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 4695
    .local v3, "replyInset":I
    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v0, v4

    .line 4697
    .end local v3    # "replyInset":I
    :cond_0
    if-eqz p1, :cond_1

    .line 4699
    add-int/2addr v0, v2

    .line 4701
    if-eqz p2, :cond_1

    .line 4703
    add-int/2addr v0, v1

    .line 4706
    :cond_1
    if-nez p2, :cond_2

    if-eqz p1, :cond_3

    .line 4708
    :cond_2
    add-int/2addr v0, v1

    .line 4710
    :cond_3
    return v0
.end method

.method private createSummaryText()Ljava/lang/CharSequence;
    .locals 6

    .line 5325
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5326
    .local v0, "titleText":Ljava/lang/CharSequence;
    sget-boolean v1, Landroid/app/Notification$Builder;->USE_ONLY_TITLE_IN_LOW_PRIORITY_SUMMARY:Z

    if-eqz v1, :cond_0

    .line 5327
    return-object v0

    .line 5329
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 5330
    .local v1, "summary":Landroid/text/SpannableStringBuilder;
    if-nez v0, :cond_1

    .line 5331
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title.big"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5333
    :cond_1
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    .line 5334
    .local v2, "bidi":Landroid/text/BidiFormatter;
    if-eqz v0, :cond_2

    .line 5335
    invoke-virtual {v2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5337
    :cond_2
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.text"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 5338
    .local v3, "contentText":Ljava/lang/CharSequence;
    if-eqz v0, :cond_3

    if-eqz v3, :cond_3

    .line 5339
    iget-object v4, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    const v5, 0x1040405

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5342
    :cond_3
    if-eqz v3, :cond_4

    .line 5343
    invoke-virtual {v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5345
    :cond_4
    return-object v1
.end method

.method private ensureColorSpanContrast(Ljava/lang/CharSequence;I[Landroid/content/res/ColorStateList;)Ljava/lang/CharSequence;
    .locals 27
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "background"    # I
    .param p3, "outResultColor"    # [Landroid/content/res/ColorStateList;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 5423
    instance-of v3, v1, Landroid/text/Spanned;

    if-eqz v3, :cond_a

    .line 5424
    move-object v3, v1

    check-cast v3, Landroid/text/Spanned;

    .line 5425
    .local v3, "ss":Landroid/text/Spanned;
    invoke-interface {v3}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v3, v6, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    .line 5426
    .local v4, "spans":[Ljava/lang/Object;
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5427
    .local v5, "builder":Landroid/text/SpannableStringBuilder;
    array-length v7, v4

    move v8, v6

    :goto_0
    if-ge v8, v7, :cond_9

    aget-object v9, v4, v8

    .line 5428
    .local v9, "span":Ljava/lang/Object;
    move-object v10, v9

    .line 5429
    .local v10, "resultSpan":Ljava/lang/Object;
    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 5430
    .local v11, "spanStart":I
    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 5431
    .local v12, "spanEnd":I
    sub-int v13, v12, v11

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-ne v13, v14, :cond_0

    const/4 v13, 0x1

    goto :goto_1

    :cond_0
    move v13, v6

    .line 5432
    .local v13, "fullLength":Z
    :goto_1
    instance-of v14, v10, Landroid/text/style/CharacterStyle;

    if-eqz v14, :cond_1

    .line 5433
    move-object v14, v9

    check-cast v14, Landroid/text/style/CharacterStyle;

    invoke-virtual {v14}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v10

    .line 5435
    :cond_1
    instance-of v14, v10, Landroid/text/style/TextAppearanceSpan;

    if-eqz v14, :cond_5

    .line 5436
    move-object v14, v10

    check-cast v14, Landroid/text/style/TextAppearanceSpan;

    .line 5437
    .local v14, "originalSpan":Landroid/text/style/TextAppearanceSpan;
    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getTextColor()Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 5438
    .local v6, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v6, :cond_4

    .line 5439
    move-object v15, v4

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getColors()[I

    move-result-object v4

    .line 5440
    .local v4, "colors":[I
    .local v15, "spans":[Ljava/lang/Object;
    move/from16 v16, v7

    array-length v7, v4

    new-array v7, v7, [I

    .line 5441
    .local v7, "newColors":[I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v18, v17

    .end local v17    # "i":I
    .local v18, "i":I
    array-length v1, v7

    move/from16 v19, v8

    move/from16 v8, v18

    if-ge v8, v1, :cond_2

    .line 5442
    .end local v18    # "i":I
    .local v8, "i":I
    aget v1, v4, v8

    move-object/from16 v20, v4

    iget-boolean v4, v0, Landroid/app/Notification$Builder;->mInNightMode:Z

    .end local v4    # "colors":[I
    .local v20, "colors":[I
    invoke-static {v1, v2, v4}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v1

    aput v1, v7, v8

    .line 5441
    add-int/lit8 v17, v8, 0x1

    .end local v8    # "i":I
    .restart local v17    # "i":I
    move/from16 v8, v19

    move-object/from16 v4, v20

    move-object/from16 v1, p1

    goto :goto_2

    .line 5445
    .end local v17    # "i":I
    .end local v20    # "colors":[I
    .restart local v4    # "colors":[I
    :cond_2
    move-object/from16 v20, v4

    .end local v4    # "colors":[I
    .restart local v20    # "colors":[I
    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getStates()[[I

    move-result-object v4

    invoke-virtual {v4}, [[I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    invoke-direct {v1, v4, v7}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 5447
    .end local v6    # "textColor":Landroid/content/res/ColorStateList;
    .local v1, "textColor":Landroid/content/res/ColorStateList;
    if-eqz v13, :cond_3

    .line 5448
    const/4 v4, 0x0

    aput-object v1, p3, v4

    .line 5450
    const/4 v1, 0x0

    .line 5452
    :cond_3
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    .line 5453
    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getFamily()Ljava/lang/String;

    move-result-object v22

    .line 5454
    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getTextStyle()I

    move-result v23

    .line 5455
    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getTextSize()I

    move-result v24

    .line 5457
    invoke-virtual {v14}, Landroid/text/style/TextAppearanceSpan;->getLinkTextColor()Landroid/content/res/ColorStateList;

    move-result-object v26

    move-object/from16 v21, v4

    move-object/from16 v25, v1

    invoke-direct/range {v21 .. v26}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    move-object v10, v4

    .end local v1    # "textColor":Landroid/content/res/ColorStateList;
    .end local v7    # "newColors":[I
    .end local v14    # "originalSpan":Landroid/text/style/TextAppearanceSpan;
    .end local v20    # "colors":[I
    goto :goto_3

    .line 5459
    .end local v15    # "spans":[Ljava/lang/Object;
    .local v4, "spans":[Ljava/lang/Object;
    :cond_4
    move-object v15, v4

    move/from16 v16, v7

    move/from16 v19, v8

    .line 5473
    .end local v4    # "spans":[Ljava/lang/Object;
    .restart local v15    # "spans":[Ljava/lang/Object;
    :goto_3
    const/4 v7, 0x0

    goto :goto_5

    .line 5459
    .end local v15    # "spans":[Ljava/lang/Object;
    .restart local v4    # "spans":[Ljava/lang/Object;
    :cond_5
    move-object v15, v4

    move/from16 v16, v7

    move/from16 v19, v8

    .end local v4    # "spans":[Ljava/lang/Object;
    .restart local v15    # "spans":[Ljava/lang/Object;
    instance-of v1, v10, Landroid/text/style/ForegroundColorSpan;

    if-eqz v1, :cond_7

    .line 5460
    move-object v1, v10

    check-cast v1, Landroid/text/style/ForegroundColorSpan;

    .line 5461
    .local v1, "originalSpan":Landroid/text/style/ForegroundColorSpan;
    invoke-virtual {v1}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v4

    .line 5462
    .local v4, "foregroundColor":I
    iget-boolean v6, v0, Landroid/app/Notification$Builder;->mInNightMode:Z

    invoke-static {v4, v2, v6}, Lcom/android/internal/util/NotificationColorUtil;->ensureLargeTextContrast(IIZ)I

    move-result v4

    .line 5464
    if-eqz v13, :cond_6

    .line 5465
    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, p3, v7

    .line 5466
    const/4 v6, 0x0

    .line 5470
    .end local v10    # "resultSpan":Ljava/lang/Object;
    .local v6, "resultSpan":Ljava/lang/Object;
    move-object v10, v6

    goto :goto_4

    .line 5468
    .end local v6    # "resultSpan":Ljava/lang/Object;
    .restart local v10    # "resultSpan":Ljava/lang/Object;
    :cond_6
    const/4 v7, 0x0

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    move-object v1, v6

    .line 5470
    .end local v4    # "foregroundColor":I
    .end local v10    # "resultSpan":Ljava/lang/Object;
    .local v1, "resultSpan":Ljava/lang/Object;
    move-object v10, v1

    .end local v1    # "resultSpan":Ljava/lang/Object;
    .restart local v10    # "resultSpan":Ljava/lang/Object;
    :goto_4
    goto :goto_5

    .line 5471
    :cond_7
    const/4 v7, 0x0

    move-object v10, v9

    .line 5473
    :goto_5
    if-eqz v10, :cond_8

    .line 5474
    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v5, v10, v11, v12, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 5427
    .end local v9    # "span":Ljava/lang/Object;
    .end local v10    # "resultSpan":Ljava/lang/Object;
    .end local v11    # "spanStart":I
    .end local v12    # "spanEnd":I
    .end local v13    # "fullLength":Z
    :cond_8
    add-int/lit8 v8, v19, 0x1

    move v6, v7

    move-object v4, v15

    move/from16 v7, v16

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 5477
    .end local v15    # "spans":[Ljava/lang/Object;
    .local v4, "spans":[Ljava/lang/Object;
    :cond_9
    move-object v15, v4

    .end local v4    # "spans":[Ljava/lang/Object;
    .restart local v15    # "spans":[Ljava/lang/Object;
    return-object v5

    .line 5479
    .end local v3    # "ss":Landroid/text/Spanned;
    .end local v5    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v15    # "spans":[Ljava/lang/Object;
    :cond_a
    move-object/from16 v1, p1

    return-object v1
.end method

.method private ensureColors()V
    .locals 17

    .line 4519
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->getBackgroundColor()I

    move-result v1

    .line 4520
    .local v1, "backgroundColor":I
    iget v2, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    if-eq v2, v3, :cond_0

    iget v2, v0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    if-eq v2, v1, :cond_b

    .line 4523
    :cond_0
    iput v1, v0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    .line 4524
    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->hasForegroundColor()Z

    move-result v2

    const-wide/high16 v4, 0x4012000000000000L    # 4.5

    if-eqz v2, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_4

    .line 4536
    :cond_1
    invoke-static {v1}, Lcom/android/internal/util/NotificationColorUtil;->calculateLuminance(I)D

    move-result-wide v6

    .line 4537
    .local v6, "backLum":D
    iget v2, v0, Landroid/app/Notification$Builder;->mForegroundColor:I

    invoke-static {v2}, Lcom/android/internal/util/NotificationColorUtil;->calculateLuminance(I)D

    move-result-wide v8

    .line 4538
    .local v8, "textLum":D
    iget v2, v0, Landroid/app/Notification$Builder;->mForegroundColor:I

    invoke-static {v2, v1}, Lcom/android/internal/util/NotificationColorUtil;->calculateContrast(II)D

    move-result-wide v10

    .line 4542
    .local v10, "contrast":D
    cmpl-double v2, v6, v8

    if-lez v2, :cond_2

    const/high16 v2, -0x1000000

    .line 4543
    invoke-static {v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->satisfiesTextContrast(II)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    cmpg-double v2, v6, v8

    if-gtz v2, :cond_4

    const/4 v2, -0x1

    .line 4545
    invoke-static {v1, v2}, Lcom/android/internal/util/NotificationColorUtil;->satisfiesTextContrast(II)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 4546
    .local v2, "backgroundLight":Z
    :goto_0
    cmpg-double v12, v10, v4

    const/16 v13, 0xa

    const/16 v14, -0x14

    if-gez v12, :cond_6

    .line 4547
    if-eqz v2, :cond_5

    .line 4548
    iget v12, v0, Landroid/app/Notification$Builder;->mForegroundColor:I

    invoke-static {v12, v1, v3, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4553
    iget v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-static {v3, v14}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    goto/16 :goto_5

    .line 4556
    :cond_5
    iget v12, v0, Landroid/app/Notification$Builder;->mForegroundColor:I

    .line 4557
    invoke-static {v12, v1, v3, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4562
    iget v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-static {v3, v13}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    goto :goto_5

    .line 4566
    :cond_6
    iget v12, v0, Landroid/app/Notification$Builder;->mForegroundColor:I

    iput v12, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 4567
    iget v12, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 4568
    if-eqz v2, :cond_7

    const/16 v15, 0x14

    goto :goto_1

    .line 4569
    :cond_7
    const/16 v15, -0xa

    .line 4567
    :goto_1
    invoke-static {v12, v15}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v12

    iput v12, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4570
    iget v12, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-static {v12, v1}, Lcom/android/internal/util/NotificationColorUtil;->calculateContrast(II)D

    move-result-wide v15

    cmpg-double v12, v15, v4

    if-gez v12, :cond_b

    .line 4573
    if-eqz v2, :cond_8

    .line 4574
    iget v12, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-static {v12, v1, v3, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColor(IIZD)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    goto :goto_2

    .line 4580
    :cond_8
    iget v12, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4581
    invoke-static {v12, v1, v3, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->findContrastColorAgainstDark(IIZD)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4587
    :goto_2
    iget v3, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4588
    if-eqz v2, :cond_9

    .line 4589
    nop

    .line 4587
    move v13, v14

    goto :goto_3

    .line 4590
    :cond_9
    nop

    .line 4587
    :goto_3
    invoke-static {v3, v13}, Lcom/android/internal/util/NotificationColorUtil;->changeColorLightness(II)I

    move-result v3

    iput v3, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .end local v2    # "backgroundLight":Z
    .end local v6    # "backLum":D
    .end local v8    # "textLum":D
    .end local v10    # "contrast":D
    goto :goto_5

    .line 4525
    :cond_a
    :goto_4
    iget-object v2, v0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/util/NotificationColorUtil;->resolvePrimaryColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 4527
    iget-object v2, v0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/android/internal/util/NotificationColorUtil;->resolveSecondaryColor(Landroid/content/Context;I)I

    move-result v2

    iput v2, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4529
    if-eqz v1, :cond_b

    invoke-direct/range {p0 .. p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4530
    iget v2, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    invoke-static {v2, v1, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v2

    iput v2, v0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    .line 4532
    iget v2, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-static {v2, v1, v4, v5}, Lcom/android/internal/util/NotificationColorUtil;->findAlphaToMeetContrast(IID)I

    move-result v2

    iput v2, v0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    .line 4595
    :cond_b
    :goto_5
    return-void
.end method

.method private findReplyAction()Landroid/app/Notification$Action;
    .locals 5

    .line 4758
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 4759
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    iget-object v1, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 4760
    iget-object v0, p0, Landroid/app/Notification$Builder;->mOriginalActions:Ljava/util/ArrayList;

    .line 4762
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4763
    .local v1, "numActions":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 4764
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Notification$Action;

    .line 4765
    .local v3, "action":Landroid/app/Notification$Action;
    invoke-direct {p0, v3}, Landroid/app/Notification$Builder;->hasValidRemoteInput(Landroid/app/Notification$Action;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4766
    return-object v3

    .line 4763
    .end local v3    # "action":Landroid/app/Notification$Action;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4769
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private generateActionButton(Landroid/app/Notification$Action;ZZ)Landroid/widget/RemoteViews;
    .locals 12
    .param p1, "action"    # Landroid/app/Notification$Action;
    .param p2, "emphazisedMode"    # Z
    .param p3, "ambient"    # Z

    .line 5350
    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 5351
    .local v0, "tombstone":Z
    :goto_0
    new-instance v3, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v4, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 5352
    if-eqz p2, :cond_1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getEmphasizedActionLayoutResource()I

    move-result v5

    goto :goto_1

    .line 5353
    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionTombstoneLayoutResource()I

    move-result v5

    goto :goto_1

    .line 5354
    :cond_2
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getActionLayoutResource()I

    move-result v5

    :goto_1
    invoke-direct {v3, v4, v5}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 5355
    .local v3, "button":Landroid/widget/RemoteViews;
    const v4, 0x1020175

    if-nez v0, :cond_3

    .line 5356
    iget-object v5, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 5358
    :cond_3
    iget-object v5, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 5359
    invoke-static {p1}, Landroid/app/Notification$Action;->access$1700(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 5360
    invoke-static {p1}, Landroid/app/Notification$Action;->access$1700(Landroid/app/Notification$Action;)[Landroid/app/RemoteInput;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setRemoteInputs(I[Landroid/app/RemoteInput;)V

    .line 5362
    :cond_4
    if-eqz p2, :cond_a

    .line 5364
    iget-object v5, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 5365
    .local v5, "title":Ljava/lang/CharSequence;
    const/4 v6, 0x0

    .line 5366
    .local v6, "outResultColor":[Landroid/content/res/ColorStateList;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->resolveBackgroundColor()I

    move-result v7

    .line 5367
    .local v7, "background":I
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 5368
    invoke-static {v5}, Lcom/android/internal/util/NotificationColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_2

    .line 5370
    :cond_5
    new-array v6, v1, [Landroid/content/res/ColorStateList;

    .line 5371
    invoke-direct {p0, v5, v7, v6}, Landroid/app/Notification$Builder;->ensureColorSpanContrast(Ljava/lang/CharSequence;I[Landroid/content/res/ColorStateList;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 5373
    :goto_2
    invoke-direct {p0, v5}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5374
    invoke-direct {p0, v3, v4}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    .line 5376
    if-eqz v6, :cond_6

    aget-object v8, v6, v2

    if-eqz v8, :cond_6

    move v8, v1

    goto :goto_3

    :cond_6
    move v8, v2

    .line 5377
    .local v8, "hasColorOverride":Z
    :goto_3
    if-eqz v8, :cond_7

    .line 5380
    aget-object v9, v6, v2

    invoke-virtual {v9}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v7

    .line 5381
    iget-object v9, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    invoke-static {v9, v7}, Lcom/android/internal/util/NotificationColorUtil;->resolvePrimaryColor(Landroid/content/Context;I)I

    move-result v9

    .line 5383
    .local v9, "textColor":I
    invoke-virtual {v3, v4, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 5384
    nop

    .line 5385
    .local v9, "rippleColor":I
    goto :goto_4

    .line 5385
    .end local v9    # "rippleColor":I
    :cond_7
    iget-object v9, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v9, v9, Landroid/app/Notification;->color:I

    if-eqz v9, :cond_8

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v9

    if-nez v9, :cond_8

    iget-boolean v9, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    if-eqz v9, :cond_8

    .line 5386
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v9

    .line 5387
    .restart local v9    # "rippleColor":I
    invoke-virtual {v3, v4, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto :goto_4

    .line 5389
    .end local v9    # "rippleColor":I
    :cond_8
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v9

    .line 5392
    .restart local v9    # "rippleColor":I
    :goto_4
    const v10, 0xffffff

    and-int/2addr v10, v9

    const/high16 v11, 0x33000000

    or-int v9, v10, v11

    .line 5393
    const-string/jumbo v10, "setRippleColor"

    .line 5394
    invoke-static {v9}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 5393
    invoke-virtual {v3, v4, v10, v11}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 5395
    const-string/jumbo v10, "setButtonBackground"

    .line 5396
    invoke-static {v7}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    .line 5395
    invoke-virtual {v3, v4, v10, v11}, Landroid/widget/RemoteViews;->setColorStateList(ILjava/lang/String;Landroid/content/res/ColorStateList;)V

    .line 5397
    const-string/jumbo v10, "setHasStroke"

    if-nez v8, :cond_9

    goto :goto_5

    :cond_9
    move v1, v2

    :goto_5
    invoke-virtual {v3, v4, v10, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 5398
    .end local v5    # "title":Ljava/lang/CharSequence;
    .end local v6    # "outResultColor":[Landroid/content/res/ColorStateList;
    .end local v7    # "background":I
    .end local v8    # "hasColorOverride":Z
    .end local v9    # "rippleColor":I
    goto :goto_7

    .line 5399
    :cond_a
    iget-object v1, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    .line 5400
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5399
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 5401
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v1

    if-eqz v1, :cond_b

    if-nez p3, :cond_b

    .line 5402
    invoke-direct {p0, v3, v4}, Landroid/app/Notification$Builder;->setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V

    goto :goto_7

    .line 5403
    :cond_b
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-eqz v1, :cond_d

    iget-boolean v1, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    if-eqz v1, :cond_d

    .line 5404
    nop

    .line 5405
    if-eqz p3, :cond_c

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    move-result v1

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v1

    .line 5404
    :goto_6
    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 5408
    :cond_d
    :goto_7
    return-object v3
.end method

.method private getActionLayoutResource()I
    .locals 1

    .line 5841
    const v0, 0x109008b

    return v0
.end method

.method private getActionTombstoneLayoutResource()I
    .locals 1

    .line 5849
    const v0, 0x109008e

    return v0
.end method

.method private getAllExtras()Landroid/os/Bundle;
    .locals 2

    .line 4174
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 4175
    .local v0, "saveExtras":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4176
    return-object v0
.end method

.method private getBackgroundColor()I
    .locals 2

    .line 5853
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5854
    iget v0, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    :goto_0
    return v0

    .line 5856
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private getBaseLayoutResource()I
    .locals 1

    .line 5817
    const v0, 0x1090094

    return v0
.end method

.method private getBigBaseLayoutResource()I
    .locals 1

    .line 5821
    const v0, 0x1090095

    return v0
.end method

.method private getBigPictureLayoutResource()I
    .locals 1

    .line 5825
    const v0, 0x1090097

    return v0
.end method

.method private getBigTextLayoutResource()I
    .locals 1

    .line 5829
    const v0, 0x1090098

    return v0
.end method

.method private getColorUtil()Lcom/android/internal/util/NotificationColorUtil;
    .locals 1

    .line 3337
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    if-nez v0, :cond_0

    .line 3338
    iget-object v0, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/util/NotificationColorUtil;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    .line 3340
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mColorUtil:Lcom/android/internal/util/NotificationColorUtil;

    return-object v0
.end method

.method private getEmphasizedActionLayoutResource()I
    .locals 1

    .line 5845
    const v0, 0x109008c

    return v0
.end method

.method private getInboxLayoutResource()I
    .locals 1

    .line 5833
    const v0, 0x1090099

    return v0
.end method

.method private getMessagingLayoutResource()I
    .locals 1

    .line 5837
    const v0, 0x109009b

    return v0
.end method

.method private getNeutralColor()I
    .locals 1

    .line 5864
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5865
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getSecondaryTextColor()I

    move-result v0

    return v0

    .line 5867
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveNeutralColor()I

    move-result v0

    return v0
.end method

.method private getProfileBadge()Landroid/graphics/Bitmap;
    .locals 5

    .line 4341
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4342
    .local v0, "badge":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 4343
    const/4 v1, 0x0

    return-object v1

    .line 4345
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050128

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 4347
    .local v1, "size":I
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 4348
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4349
    .local v3, "canvas":Landroid/graphics/Canvas;
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v4, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4350
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4351
    return-object v2
.end method

.method private getProfileBadgeDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 4329
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 4332
    const/4 v0, 0x0

    return-object v0

    .line 4336
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 4337
    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v2, 0x0

    .line 4336
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgeForDensityNoBackground(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getThemeSamllIcon()Landroid/graphics/drawable/Icon;
    .locals 8

    .line 4919
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.appInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 4920
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v2, "use_custom_icon"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "android"

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4923
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 4925
    .local v1, "useAppIcon":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 4926
    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 4927
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 4928
    .local v4, "w":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 4929
    .local v5, "h":I
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 4930
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_1
    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 4929
    :goto_1
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 4931
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 4932
    .local v7, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4933
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4934
    invoke-static {v6}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    return-object v2

    .line 4936
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v4    # "w":I
    .end local v5    # "h":I
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v2}, Landroid/app/Notification;->access$1900(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v2

    return-object v2
.end method

.method private handleNubiaTitleIcon(Landroid/widget/RemoteViews;Landroid/os/Bundle;)Z
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "ex"    # Landroid/os/Bundle;

    .line 4625
    const-string/jumbo v0, "sim_card"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4626
    .local v0, "sim_card":I
    const v2, 0x1020347

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 4634
    :pswitch_0
    const v3, 0x1080752

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 4630
    :pswitch_1
    const v3, 0x1080751

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 4631
    goto :goto_0

    .line 4627
    :pswitch_2
    const/16 v3, 0x8

    invoke-virtual {p1, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4628
    return v1

    .line 4638
    :goto_0
    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4639
    const/4 v1, 0x1

    return v1

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleProgressBar(ZLandroid/widget/RemoteViews;Landroid/os/Bundle;)Z
    .locals 6
    .param p1, "hasProgress"    # Z
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "ex"    # Landroid/os/Bundle;

    .line 4644
    const-string v0, "android.progressMax"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 4645
    .local v0, "max":I
    const-string v2, "android.progress"

    invoke-virtual {p3, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 4646
    .local v2, "progress":I
    const-string v3, "android.progressIndeterminate"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 4647
    .local v3, "ind":Z
    const v4, 0x102000d

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    if-eqz v3, :cond_2

    .line 4648
    :cond_0
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4649
    invoke-virtual {p2, v4, v0, v2, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 4651
    iget-object v1, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    const v5, 0x10600f6

    .line 4652
    invoke-virtual {v1, v5}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 4651
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setProgressBackgroundTintList(ILandroid/content/res/ColorStateList;)V

    .line 4654
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-eqz v1, :cond_1

    .line 4655
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 4656
    .local v1, "colorStateList":Landroid/content/res/ColorStateList;
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setProgressTintList(ILandroid/content/res/ColorStateList;)V

    .line 4657
    invoke-virtual {p2, v4, v1}, Landroid/widget/RemoteViews;->setProgressIndeterminateTintList(ILandroid/content/res/ColorStateList;)V

    .line 4659
    .end local v1    # "colorStateList":Landroid/content/res/ColorStateList;
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 4661
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {p2, v4, v5}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4662
    return v1
.end method

.method private hasForegroundColor()Z
    .locals 2

    .line 4490
    iget v0, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private hasValidRemoteInput(Landroid/app/Notification$Action;)Z
    .locals 7
    .param p1, "action"    # Landroid/app/Notification$Action;

    .line 5052
    iget-object v0, p1, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_5

    iget-object v0, p1, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    goto :goto_2

    .line 5057
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v0

    .line 5058
    .local v0, "remoteInputs":[Landroid/app/RemoteInput;
    if-nez v0, :cond_1

    .line 5059
    return v1

    .line 5062
    :cond_1
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_4

    aget-object v4, v0, v3

    .line 5063
    .local v4, "r":Landroid/app/RemoteInput;
    invoke-virtual {v4}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v5

    .line 5064
    .local v5, "choices":[Ljava/lang/CharSequence;
    invoke-virtual {v4}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v6

    if-nez v6, :cond_3

    if-eqz v5, :cond_2

    array-length v6, v5

    if-eqz v6, :cond_2

    goto :goto_1

    .line 5062
    .end local v4    # "r":Landroid/app/RemoteInput;
    .end local v5    # "choices":[Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5065
    .restart local v4    # "r":Landroid/app/RemoteInput;
    .restart local v5    # "choices":[Ljava/lang/CharSequence;
    :cond_3
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 5068
    .end local v4    # "r":Landroid/app/RemoteInput;
    .end local v5    # "choices":[Ljava/lang/CharSequence;
    :cond_4
    return v1

    .line 5054
    .end local v0    # "remoteInputs":[Landroid/app/RemoteInput;
    :cond_5
    :goto_2
    return v1
.end method

.method private hideLine1Text(Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "result"    # Landroid/widget/RemoteViews;

    .line 5169
    if-eqz p1, :cond_0

    .line 5170
    const v0, 0x102045c

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 5172
    :cond_0
    return-void
.end method

.method private isColorized()Z
    .locals 1

    .line 5885
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->isColorized()Z

    move-result v0

    return v0
.end method

.method private isLegacy()Z
    .locals 3

    .line 5487
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    if-nez v0, :cond_1

    .line 5488
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x15

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    .line 5490
    iput-boolean v2, p0, Landroid/app/Notification$Builder;->mIsLegacyInitialized:Z

    .line 5492
    :cond_1
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mIsLegacy:Z

    return v0
.end method

.method private isSystemApp()Z
    .locals 5

    .line 5539
    const/4 v0, 0x0

    .line 5540
    .local v0, "result":Z
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.appInfo"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 5541
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 5542
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-nez v2, :cond_1

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-nez v2, :cond_1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v4, "cn.nubia"

    .line 5544
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    nop

    :cond_1
    :goto_0
    move v0, v3

    .line 5545
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    .line 5547
    :cond_2
    return v0
.end method

.method public static makeHeaderExpanded(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p0, "result"    # Landroid/widget/RemoteViews;

    .line 5180
    if-eqz p0, :cond_0

    .line 5181
    const v0, 0x102033d

    const-string/jumbo v1, "setExpanded"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 5183
    :cond_0
    return-void
.end method

.method private makePublicView(Z)Landroid/widget/RemoteViews;
    .locals 11
    .param p1, "ambient"    # Z

    .line 5245
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    if-eqz v0, :cond_1

    .line 5246
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 5247
    .local v0, "builder":Landroid/app/Notification$Builder;
    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->makeAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    :goto_0
    return-object v1

    .line 5249
    .end local v0    # "builder":Landroid/app/Notification$Builder;
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 5250
    .local v0, "savedBundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 5251
    .local v1, "style":Landroid/app/Notification$Style;
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 5252
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v3}, Landroid/app/Notification;->access$1100(Landroid/app/Notification;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    .line 5253
    .local v3, "largeIcon":Landroid/graphics/drawable/Icon;
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v4, v2}, Landroid/app/Notification;->access$1102(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 5254
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 5255
    .local v4, "largeIconLegacy":Landroid/graphics/Bitmap;
    iget-object v5, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v2, v5, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 5256
    iget-object v5, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 5257
    .local v5, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/Notification$Action;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 5258
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 5259
    .local v6, "publicExtras":Landroid/os/Bundle;
    const-string v7, "android.showWhen"

    const-string v8, "android.showWhen"

    .line 5260
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 5259
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5261
    const-string v7, "android.showChronometer"

    const-string v8, "android.showChronometer"

    .line 5262
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 5261
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5263
    const-string v7, "android.chronometerCountDown"

    const-string v8, "android.chronometerCountDown"

    .line 5264
    invoke-virtual {v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 5263
    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5265
    const-string v7, "android.substName"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5266
    .local v7, "appName":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 5267
    const-string v8, "android.substName"

    invoke-virtual {v6, v8, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5269
    :cond_2
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v6, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 5271
    const v8, 0x1040406

    if-eqz p1, :cond_3

    .line 5272
    const-string v2, "android.title"

    iget-object v9, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    .line 5273
    invoke-virtual {v9, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5272
    invoke-virtual {v6, v2, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5274
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->makeAmbientNotification()Landroid/widget/RemoteViews;

    move-result-object v2

    .local v2, "view":Landroid/widget/RemoteViews;
    goto :goto_1

    .line 5281
    .end local v2    # "view":Landroid/widget/RemoteViews;
    :cond_3
    const-string v9, "android.title"

    iget-object v10, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    .line 5282
    invoke-virtual {v10, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 5281
    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5283
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v8

    invoke-direct {p0, v8, v2}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 5286
    .restart local v2    # "view":Landroid/widget/RemoteViews;
    :goto_1
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v0, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 5287
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v8, v3}, Landroid/app/Notification;->access$1102(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 5288
    iget-object v8, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object v4, v8, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    .line 5289
    iput-object v5, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    .line 5290
    iput-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 5291
    return-object v2
.end method

.method public static maybeCloneStrippedForDelivery(Landroid/app/Notification;ZLandroid/content/Context;)Landroid/app/Notification;
    .locals 8
    .param p0, "n"    # Landroid/app/Notification;
    .param p1, "isLowRam"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .line 5750
    iget-object v0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5753
    .local v0, "templateClass":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 5754
    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5755
    .local v1, "title":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.text"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 5756
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 5757
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 5758
    .local v3, "sb":Ljava/lang/StringBuilder;
    iput-object v3, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 5759
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 5760
    iput-object v1, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    goto :goto_0

    .line 5761
    :cond_1
    if-eqz v2, :cond_2

    .line 5762
    iput-object v2, p0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 5768
    .end local v1    # "title":Ljava/lang/CharSequence;
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    if-nez p1, :cond_3

    .line 5769
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5770
    invoke-static {v0}, Landroid/app/Notification;->getNotificationStyleClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_3

    .line 5771
    return-object p0

    .line 5775
    :cond_3
    iget-object v1, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    instance-of v1, v1, Landroid/app/Notification$BuilderRemoteViews;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.rebuild.contentViewActionCount"

    .line 5776
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iget-object v5, p0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 5777
    invoke-virtual {v5}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v5

    if-ne v1, v5, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v2

    .line 5778
    .local v1, "stripContentView":Z
    :goto_1
    iget-object v5, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    instance-of v5, v5, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.rebuild.bigViewActionCount"

    .line 5779
    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 5780
    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    if-ne v5, v6, :cond_5

    move v5, v3

    goto :goto_2

    :cond_5
    move v5, v2

    .line 5781
    .local v5, "stripBigContentView":Z
    :goto_2
    iget-object v6, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    instance-of v6, v6, Landroid/app/Notification$BuilderRemoteViews;

    if-eqz v6, :cond_6

    iget-object v6, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.rebuild.hudViewActionCount"

    .line 5782
    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v6, p0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 5783
    invoke-virtual {v6}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v6

    if-ne v4, v6, :cond_6

    move v2, v3

    nop

    .line 5786
    .local v2, "stripHeadsUpContentView":Z
    :cond_6
    if-nez p1, :cond_7

    if-nez v1, :cond_7

    if-nez v5, :cond_7

    if-nez v2, :cond_7

    .line 5788
    return-object p0

    .line 5791
    :cond_7
    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v3

    .line 5792
    .local v3, "clone":Landroid/app/Notification;
    const/4 v4, 0x0

    if-eqz v1, :cond_8

    .line 5793
    iput-object v4, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 5794
    iget-object v6, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.rebuild.contentViewActionCount"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5796
    :cond_8
    if-eqz v5, :cond_9

    .line 5797
    iput-object v4, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 5798
    iget-object v6, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.rebuild.bigViewActionCount"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5800
    :cond_9
    if-eqz v2, :cond_a

    .line 5801
    iput-object v4, v3, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 5802
    iget-object v4, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v6, "android.rebuild.hudViewActionCount"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5804
    :cond_a
    if-eqz p1, :cond_b

    .line 5805
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x1070009

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 5807
    .local v4, "allowedServices":[Ljava/lang/String;
    array-length v6, v4

    if-nez v6, :cond_b

    .line 5808
    iget-object v6, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.tv.EXTENSIONS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5809
    iget-object v6, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.wearable.EXTENSIONS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5810
    iget-object v6, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v7, "android.car.EXTENSIONS"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5813
    .end local v4    # "allowedServices":[Ljava/lang/String;
    :cond_b
    return-object v3
.end method

.method private processLargeLegacyIcon(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "largeIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;

    .line 5557
    if-eqz p1, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5558
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5560
    const v0, 0x1020006

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 5563
    :cond_0
    return-void
.end method

.method private processLegacyText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "charSequence"    # Ljava/lang/CharSequence;

    .line 5496
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/Notification$Builder;->processLegacyText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private processLegacyText(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "charSequence"    # Ljava/lang/CharSequence;
    .param p2, "ambient"    # Z

    .line 5500
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/app/Notification$Builder;->textColorsNeedInversion()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 5502
    .local v0, "isAlreadyLightText":Z
    :goto_1
    if-nez p2, :cond_3

    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil;->useDarkBackground()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    nop

    .line 5503
    .local v1, "wantLightText":Z
    :cond_3
    :goto_2
    if-eq v0, v1, :cond_4

    .line 5504
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/internal/util/NotificationColorUtil;->invertCharSequenceColors(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    .line 5506
    :cond_4
    return-object p1
.end method

.method private processSmallIconColor(Landroid/graphics/drawable/Icon;Landroid/widget/RemoteViews;Z)V
    .locals 6
    .param p1, "smallIcon"    # Landroid/graphics/drawable/Icon;
    .param p2, "contentView"    # Landroid/widget/RemoteViews;
    .param p3, "ambient"    # Z

    .line 5519
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isLegacy()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getColorUtil()Lcom/android/internal/util/NotificationColorUtil;

    move-result-object v0

    iget-object v3, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3, p1}, Lcom/android/internal/util/NotificationColorUtil;->isGrayscaleIcon(Landroid/content/Context;Landroid/graphics/drawable/Icon;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->isSystemApp()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 5522
    .local v0, "colorable":Z
    :goto_0
    if-eqz p3, :cond_1

    .line 5523
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveAmbientColor()I

    move-result v3

    .line 5523
    .local v3, "color":I
    :goto_1
    goto :goto_2

    .line 5524
    .end local v3    # "color":I
    :cond_1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5525
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->getPrimaryTextColor()I

    move-result v3

    goto :goto_1

    .line 5527
    :cond_2
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->resolveContrastColor()I

    move-result v3

    .line 5529
    .restart local v3    # "color":I
    :goto_2
    if-eqz v0, :cond_3

    .line 5530
    const v4, 0x1020006

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v4, v1, v3, v5}, Landroid/widget/RemoteViews;->setDrawableTint(IZILandroid/graphics/PorterDuff$Mode;)V

    .line 5533
    :cond_3
    const v1, 0x102033d

    const-string/jumbo v4, "setOriginalIconColor"

    .line 5534
    if-eqz v0, :cond_4

    .line 5533
    move v2, v3

    goto :goto_3

    .line 5534
    :cond_4
    nop

    .line 5533
    :goto_3
    invoke-virtual {p2, v1, v4, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 5535
    return-void
.end method

.method private processTextSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 4478
    invoke-direct {p0}, Landroid/app/Notification$Builder;->hasForegroundColor()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil;->useDarkBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4481
    :cond_0
    return-object p1

    .line 4479
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->clearColorSpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "n"    # Landroid/app/Notification;

    .line 5646
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.appInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 5649
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    .line 5651
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5656
    .local v1, "builderContext":Landroid/content/Context;
    :goto_0
    goto :goto_1

    .line 5653
    .end local v1    # "builderContext":Landroid/content/Context;
    :catch_0
    move-exception v1

    .line 5654
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Notification"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ApplicationInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5655
    nop

    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    move-object v1, p0

    goto :goto_0

    .line 5658
    :cond_0
    move-object v1, p0

    .line 5661
    .local v1, "builderContext":Landroid/content/Context;
    :goto_1
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, v1, p1, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Landroid/app/Notification;Landroid/content/Context;)V

    return-object v2
.end method

.method private resetNotificationHeader(Landroid/widget/RemoteViews;)V
    .locals 4
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 4403
    const-string/jumbo v0, "setExpanded"

    const/4 v1, 0x0

    const v2, 0x102033d

    invoke-virtual {p1, v2, v0, v1}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 4404
    const/4 v0, 0x0

    const v2, 0x10201af

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4405
    const/16 v2, 0x8

    const v3, 0x10201fa

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4406
    const v3, 0x102028a

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4407
    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4408
    const v3, 0x102028c

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4409
    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4410
    const v3, 0x102028b

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4411
    const v3, 0x102028d

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4412
    const v3, 0x1020463

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4413
    const v3, 0x102045f

    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4414
    const v3, 0x1020393

    invoke-virtual {p1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewIcon(ILandroid/graphics/drawable/Icon;)V

    .line 4415
    invoke-virtual {p1, v3, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4416
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification;->access$1402(Landroid/app/Notification;Z)Z

    .line 4417
    return-void
.end method

.method private resetStandardTemplate(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 4387
    invoke-direct {p0, p1}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 4388
    const/16 v0, 0x8

    const v1, 0x10203b8

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4389
    const v1, 0x1020016

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4390
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4391
    const v1, 0x1020440

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4392
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4393
    const v1, 0x102045c

    invoke-virtual {p1, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4394
    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4395
    return-void
.end method

.method private resetStandardTemplateWithActions(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "big"    # Landroid/widget/RemoteViews;

    .line 4951
    const v0, 0x102018c

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4952
    invoke-virtual {p1, v0}, Landroid/widget/RemoteViews;->removeAllViews(I)V

    .line 4954
    const v0, 0x102033f

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4955
    const/4 v0, 0x0

    const v2, 0x1020341

    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4956
    const v2, 0x1020342

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4957
    const v2, 0x1020340

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4959
    const v2, 0x1020343

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4960
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4961
    const v2, 0x1020344

    invoke-virtual {p1, v2, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4962
    invoke-virtual {p1, v2, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4964
    const v0, 0x102033b

    const v1, 0x105012e

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewLayoutMarginBottomDimen(II)V

    .line 4966
    return-void
.end method

.method private resolveBackgroundColor()I
    .locals 1

    .line 5875
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBackgroundColor()I

    move-result v0

    .line 5876
    .local v0, "backgroundColor":I
    if-nez v0, :cond_0

    .line 5879
    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil;->getBackgroundColor()I

    move-result v0

    .line 5881
    :cond_0
    return v0
.end method

.method private sanitizeColor()V
    .locals 3

    .line 5566
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    if-eqz v0, :cond_0

    .line 5567
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->color:I

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->color:I

    .line 5569
    :cond_0
    return-void
.end method

.method private setTextViewColorPrimary(Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I

    .line 4485
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 4486
    iget v0, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 4487
    return-void
.end method

.method private setTextViewColorSecondary(Landroid/widget/RemoteViews;I)V
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I

    .line 4514
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 4515
    iget v0, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    invoke-virtual {p1, p2, v0}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 4516
    return-void
.end method

.method private shouldTintActionButtons()Z
    .locals 1

    .line 5889
    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mTintActionButtons:Z

    return v0
.end method

.method private showsTimeOrChronometer()Z
    .locals 1

    .line 4945
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsTime()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0}, Landroid/app/Notification;->showsChronometer()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private textColorsNeedInversion()Z
    .locals 3

    .line 5893
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-class v0, Landroid/app/Notification$MediaStyle;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5896
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 5897
    .local v0, "targetSdkVersion":I
    const/16 v2, 0x17

    if-le v0, v2, :cond_1

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 5894
    .end local v0    # "targetSdkVersion":I
    :cond_2
    :goto_0
    return v1
.end method

.method private updateBackgroundColor(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 4598
    invoke-direct {p0}, Landroid/app/Notification$Builder;->isColorized()Z

    move-result v0

    const v1, 0x1020427

    if-eqz v0, :cond_0

    .line 4599
    const-string/jumbo v0, "setBackgroundColor"

    .line 4600
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBackgroundColor()I

    move-result v2

    .line 4599
    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto :goto_0

    .line 4603
    :cond_0
    const-string/jumbo v0, "setBackgroundResource"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4606
    :goto_0
    return-void
.end method

.method private useExistingRemoteView()Z
    .locals 1

    .line 5107
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->displayCustomViewInline()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/app/Notification$Builder;->mRebuildStyledRemoteViews:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "intent"    # Landroid/app/PendingIntent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4200
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    new-instance v1, Landroid/app/Notification$Action;

    invoke-static {p2}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, p1, v2, p3}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4201
    return-object p0
.end method

.method public addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "action"    # Landroid/app/Notification$Action;

    .line 4220
    if-eqz p1, :cond_0

    .line 4221
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4223
    :cond_0
    return-object p0
.end method

.method public addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 4134
    if-eqz p1, :cond_0

    .line 4135
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 4137
    :cond_0
    return-object p0
.end method

.method public addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "person"    # Landroid/app/Person;

    .line 4076
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4077
    return-object p0
.end method

.method public addPerson(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 4051
    new-instance v0, Landroid/app/Person$Builder;

    invoke-direct {v0}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Person$Builder;->setUri(Ljava/lang/String;)Landroid/app/Person$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->addPerson(Landroid/app/Person;)Landroid/app/Notification$Builder;

    .line 4052
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 3

    .line 5678
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 5679
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-direct {p0}, Landroid/app/Notification$Builder;->getAllExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 5682
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/app/Notification;->access$1802(Landroid/app/Notification;J)J

    .line 5685
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/app/Notification;->addFieldsFromContext(Landroid/content/Context;Landroid/app/Notification;)V

    .line 5687
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;

    .line 5689
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_1

    .line 5690
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->reduceImageSizes(Landroid/content/Context;)V

    .line 5691
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->purgeResources()V

    .line 5692
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->validate(Landroid/content/Context;)V

    .line 5693
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Style;->buildStyled(Landroid/app/Notification;)Landroid/app/Notification;

    .line 5695
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/app/Notification;->reduceImageSizes(Landroid/content/Context;)V

    .line 5697
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_4

    .line 5698
    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5699
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    .line 5700
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 5701
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.rebuild.contentViewActionCount"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 5702
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 5701
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5704
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_3

    .line 5705
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 5706
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    .line 5707
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.rebuild.bigViewActionCount"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 5708
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 5707
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5711
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_4

    .line 5712
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p0}, Landroid/app/Notification$Builder;->createHeadsUpContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 5713
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4

    .line 5714
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.rebuild.hudViewActionCount"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 5715
    invoke-virtual {v2}, Landroid/widget/RemoteViews;->getSequenceNumber()I

    move-result v2

    .line 5714
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5720
    :cond_4
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    .line 5721
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 5724
    :cond_5
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Notification;->allPendingIntents:Landroid/util/ArraySet;

    .line 5726
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method public buildInto(Landroid/app/Notification;)Landroid/app/Notification;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    .line 5735
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    .line 5736
    return-object p1
.end method

.method public buildUnstyled()Landroid/app/Notification;
    .locals 3

    .line 5625
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 5626
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/app/Notification$Action;

    iput-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    .line 5627
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5629
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5630
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.people.list"

    iget-object v2, p0, Landroid/app/Notification$Builder;->mPersonList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 5632
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_3

    .line 5634
    :cond_2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.contains.customView"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5636
    :cond_3
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    return-object v0
.end method

.method public createBigContentView()Landroid/widget/RemoteViews;
    .locals 3

    .line 5115
    const/4 v0, 0x0

    .line 5116
    .local v0, "result":Landroid/widget/RemoteViews;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5118
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/app/Notification;->isUseCustomLayout:Z

    .line 5120
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    return-object v1

    .line 5121
    :cond_0
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v1, :cond_1

    .line 5122
    iget-object v1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v1}, Landroid/app/Notification$Style;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v0

    .line 5123
    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->hideLine1Text(Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 5124
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 5125
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 5128
    :cond_2
    :goto_0
    invoke-static {v0}, Landroid/app/Notification$Builder;->makeHeaderExpanded(Landroid/widget/RemoteViews;)V

    .line 5129
    return-object v0
.end method

.method public createContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 5078
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->createContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public createContentView(Z)Landroid/widget/RemoteViews;
    .locals 2
    .param p1, "increasedHeight"    # Z

    .line 5092
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5094
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/app/Notification;->isUseCustomLayout:Z

    .line 5096
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object v0

    .line 5097
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_1

    .line 5098
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Style;->makeContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 5099
    .local v0, "styleView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_1

    .line 5100
    return-object v0

    .line 5103
    .end local v0    # "styleView":Landroid/widget/RemoteViews;
    :cond_1
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBaseLayoutResource()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/app/Notification$Builder;->applyStandardTemplate(ILandroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public createHeadsUpContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 5223
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->createHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public createHeadsUpContentView(Z)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "increasedHeight"    # Z

    .line 5196
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/app/Notification$Builder;->useExistingRemoteView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5198
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-boolean v1, v0, Landroid/app/Notification;->isUseCustomLayout:Z

    .line 5200
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    return-object v0

    .line 5201
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 5202
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Style;->makeHeadsUpContentView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 5203
    .local v0, "styleView":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_1

    .line 5204
    return-object v0

    .line 5206
    .end local v0    # "styleView":Landroid/widget/RemoteViews;
    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 5207
    return-object v2

    .line 5212
    :cond_3
    :goto_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 5213
    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->setMaxRemoteInputHistory(I)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 5214
    .local v0, "p":Landroid/app/Notification$StandardTemplateParams;
    invoke-direct {p0}, Landroid/app/Notification$Builder;->getBigBaseLayoutResource()I

    move-result v1

    invoke-direct {p0, v1, v0, v2}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v1

    return-object v1
.end method

.method public extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extender"    # Landroid/app/Notification$Extender;

    .line 4299
    invoke-interface {p1, p0}, Landroid/app/Notification$Extender;->extend(Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    .line 4300
    return-object p0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .line 4170
    iget-object v0, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getHeadsUpStatusBarText(Z)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "publicMode"    # Z

    .line 5937
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 5938
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0}, Landroid/app/Notification$Style;->getHeadsUpStatusBarText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 5939
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5940
    return-object v0

    .line 5943
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->loadHeaderAppName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5669
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryTextColor()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4499
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 4500
    iget v0, p0, Landroid/app/Notification$Builder;->mPrimaryTextColor:I

    return v0
.end method

.method public getSecondaryTextColor()I
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 4509
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 4510
    iget v0, p0, Landroid/app/Notification$Builder;->mSecondaryTextColor:I

    return v0
.end method

.method public getStyle()Landroid/app/Notification$Style;
    .locals 1

    .line 4265
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    return-object v0
.end method

.method public loadHeaderAppName()Ljava/lang/String;
    .locals 7

    .line 4864
    const/4 v0, 0x0

    .line 4865
    .local v0, "name":Ljava/lang/CharSequence;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 4866
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.substName"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4871
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4872
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.substName"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4873
    .local v3, "subName":Ljava/lang/String;
    const-string v4, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    invoke-virtual {v1, v4, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 4875
    move-object v0, v3

    goto :goto_0

    .line 4877
    :cond_0
    const-string v4, "Notification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "warning: pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " attempting to substitute app name \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' without holding perm "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "android.permission.SUBSTITUTE_NOTIFICATION_APP_NAME"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4883
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "subName":Ljava/lang/String;
    :cond_1
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4884
    iget-object v2, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4886
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4888
    const/4 v2, 0x0

    return-object v2

    .line 4891
    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public makeAmbientNotification()Landroid/widget/RemoteViews;
    .locals 3

    .line 5161
    iget-object v0, p0, Landroid/app/Notification$Builder;->mParams:Landroid/app/Notification$StandardTemplateParams;

    .line 5163
    invoke-virtual {v0}, Landroid/app/Notification$StandardTemplateParams;->reset()Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->ambient(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Notification$StandardTemplateParams;->fillTextsFrom(Landroid/app/Notification$Builder;)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$StandardTemplateParams;->hasProgress(Z)Landroid/app/Notification$StandardTemplateParams;

    move-result-object v0

    .line 5161
    const v1, 0x1090093

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/app/Notification$Builder;->applyStandardTemplateWithActions(ILandroid/app/Notification$StandardTemplateParams;Landroid/app/Notification$TemplateBindResult;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 5165
    .local v0, "ambient":Landroid/widget/RemoteViews;
    return-object v0
.end method

.method public makeLowPriorityContentView(Z)Landroid/widget/RemoteViews;
    .locals 6
    .param p1, "useRegularSubtext"    # Z

    .line 5303
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->color:I

    .line 5304
    .local v0, "color":I
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v2, 0x0

    iput v2, v1, Landroid/app/Notification;->color:I

    .line 5305
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.subText"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5306
    .local v1, "summary":Ljava/lang/CharSequence;
    if-eqz p1, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5307
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$Builder;->createSummaryText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 5308
    .local v3, "newSummary":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 5309
    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v5, "android.subText"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 5313
    .end local v3    # "newSummary":Ljava/lang/CharSequence;
    :cond_1
    invoke-virtual {p0, v2}, Landroid/app/Notification$Builder;->makeNotificationHeader(Z)Landroid/widget/RemoteViews;

    move-result-object v2

    .line 5314
    .local v2, "header":Landroid/widget/RemoteViews;
    const v3, 0x102033d

    const-string/jumbo v4, "setAcceptAllTouches"

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/RemoteViews;->setBoolean(ILjava/lang/String;Z)V

    .line 5315
    if-eqz v1, :cond_2

    .line 5316
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.subText"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 5318
    :cond_2
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.subText"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5320
    :goto_0
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput v0, v3, Landroid/app/Notification;->color:I

    .line 5321
    return-object v2
.end method

.method public makeNotificationHeader(Z)Landroid/widget/RemoteViews;
    .locals 5
    .param p1, "ambient"    # Z

    .line 5140
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.colorized"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 5141
    .local v0, "colorized":Ljava/lang/Boolean;
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v2, "android.colorized"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 5142
    new-instance v1, Landroid/app/Notification$BuilderRemoteViews;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 5143
    if-eqz p1, :cond_0

    const v3, 0x1090091

    goto :goto_0

    .line 5144
    :cond_0
    const v3, 0x1090092

    :goto_0
    invoke-direct {v1, v2, v3}, Landroid/app/Notification$BuilderRemoteViews;-><init>(Landroid/content/pm/ApplicationInfo;I)V

    .line 5145
    .local v1, "header":Landroid/widget/RemoteViews;
    invoke-direct {p0, v1}, Landroid/app/Notification$Builder;->resetNotificationHeader(Landroid/widget/RemoteViews;)V

    .line 5146
    const/4 v2, 0x0

    invoke-direct {p0, v1, p1, v2}, Landroid/app/Notification$Builder;->bindNotificationHeader(Landroid/widget/RemoteViews;ZLjava/lang/CharSequence;)V

    .line 5147
    if-eqz v0, :cond_1

    .line 5148
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.colorized"

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 5150
    :cond_1
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.colorized"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 5152
    :goto_1
    return-object v1
.end method

.method public makePublicAmbientNotification()Landroid/widget/RemoteViews;
    .locals 1

    .line 5241
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makePublicView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method public makePublicContentView()Landroid/widget/RemoteViews;
    .locals 1

    .line 5232
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/app/Notification$Builder;->makePublicView(Z)Landroid/widget/RemoteViews;

    move-result-object v0

    return-object v0
.end method

.method resolveAmbientColor()I
    .locals 2

    .line 5611
    iget v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5612
    iget v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColor:I

    return v0

    .line 5614
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->resolveAmbientColor(Landroid/content/Context;I)I

    move-result v0

    .line 5616
    .local v0, "contrasted":I
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    iput v1, p0, Landroid/app/Notification$Builder;->mCachedAmbientColorIsFor:I

    .line 5617
    iput v0, p0, Landroid/app/Notification$Builder;->mCachedAmbientColor:I

    return v0
.end method

.method resolveContrastColor()I
    .locals 4

    .line 5572
    iget v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5573
    iget v0, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    return v0

    .line 5579
    :cond_0
    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil;->getBackgroundColor()I

    move-result v0

    .line 5580
    .local v0, "background":I
    iget-object v1, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->color:I

    if-nez v1, :cond_1

    .line 5581
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 5582
    iget-object v1, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->resolveDefaultColor(Landroid/content/Context;I)I

    move-result v1

    .local v1, "color":I
    goto :goto_0

    .line 5584
    .end local v1    # "color":I
    :cond_1
    iget-object v1, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    iget-boolean v3, p0, Landroid/app/Notification$Builder;->mInNightMode:Z

    invoke-static {v1, v2, v0, v3}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;IIZ)I

    move-result v1

    .line 5587
    .restart local v1    # "color":I
    :goto_0
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    const/16 v3, 0xff

    if-ge v2, v3, :cond_2

    .line 5589
    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->compositeColors(II)I

    move-result v1

    .line 5591
    :cond_2
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->color:I

    iput v2, p0, Landroid/app/Notification$Builder;->mCachedContrastColorIsFor:I

    .line 5592
    iput v1, p0, Landroid/app/Notification$Builder;->mCachedContrastColor:I

    return v1
.end method

.method resolveNeutralColor()I
    .locals 3

    .line 5596
    iget v0, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5597
    iget v0, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    return v0

    .line 5601
    :cond_0
    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil;->getBackgroundColor()I

    move-result v0

    .line 5602
    .local v0, "background":I
    iget-object v1, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->resolveDefaultColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    .line 5603
    iget v1, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_1

    .line 5605
    iget v1, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil;->compositeColors(II)I

    move-result v1

    iput v1, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    .line 5607
    :cond_1
    iget v1, p0, Landroid/app/Notification$Builder;->mNeutralColor:I

    return v1
.end method

.method public varargs setActions([Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "actions"    # [Landroid/app/Notification$Action;

    .line 4234
    iget-object v0, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4235
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 4236
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 4237
    iget-object v1, p0, Landroid/app/Notification$Builder;->mActions:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4235
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4240
    .end local v0    # "i":I
    :cond_1
    return-object p0
.end method

.method public setAutoCancel(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "autoCancel"    # Z

    .line 3967
    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 3968
    return-object p0
.end method

.method public setBadgeIconType(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I

    .line 3368
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$702(Landroid/app/Notification;I)I

    .line 3369
    return-object p0
.end method

.method public setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .line 4019
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    .line 4020
    return-object p0
.end method

.method public setChannel(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3390
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$502(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3391
    return-object p0
.end method

.method public setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "channelId"    # Ljava/lang/String;

    .line 3398
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$502(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3399
    return-object p0
.end method

.method public setChronometerCountDown(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "countDown"    # Z

    .line 3472
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.chronometerCountDown"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3473
    return-object p0
.end method

.method public setColor(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "argb"    # I

    .line 4323
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->color:I

    .line 4324
    invoke-direct {p0}, Landroid/app/Notification$Builder;->sanitizeColor()V

    .line 4325
    return-object p0
.end method

.method public setColorPalette(II)V
    .locals 1
    .param p1, "backgroundColor"    # I
    .param p2, "foregroundColor"    # I

    .line 5910
    iput p1, p0, Landroid/app/Notification$Builder;->mBackgroundColor:I

    .line 5911
    iput p2, p0, Landroid/app/Notification$Builder;->mForegroundColor:I

    .line 5912
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/Notification$Builder;->mTextColorsAreForBackground:I

    .line 5913
    invoke-direct {p0}, Landroid/app/Notification$Builder;->ensureColors()V

    .line 5914
    return-void
.end method

.method public setColorized(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "colorize"    # Z

    .line 3946
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.colorized"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3947
    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3675
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "info"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3652
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.infoText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3653
    return-object p0
.end method

.method public setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 3725
    if-eqz p1, :cond_0

    .line 3726
    :try_start_0
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v0

    .line 3727
    .local v0, "target":Landroid/content/IIntentSender;
    if-eqz v0, :cond_0

    .line 3728
    invoke-interface {v0}, Landroid/content/IIntentSender;->setRequestIntentForNotification()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "target":Landroid/content/IIntentSender;
    goto :goto_0

    .line 3733
    :catch_0
    move-exception v0

    .line 3734
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 3731
    :catch_1
    move-exception v0

    .line 3732
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3735
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    nop

    .line 3738
    :goto_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 3739
    return-object p0
.end method

.method setContentMinHeight(Landroid/widget/RemoteViews;Z)V
    .locals 3
    .param p1, "remoteView"    # Landroid/widget/RemoteViews;
    .param p2, "hasMinHeight"    # Z

    .line 4614
    const/4 v0, 0x0

    .line 4615
    .local v0, "minHeight":I
    if-eqz p2, :cond_0

    .line 4617
    iget-object v1, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105014d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4620
    :cond_0
    const v1, 0x102033e

    const-string/jumbo v2, "setMinimumHeight"

    invoke-virtual {p1, v1, v2, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4621
    return-void
.end method

.method public setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 3540
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.text"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3541
    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 3532
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.title"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3533
    return-object p0
.end method

.method public setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 3696
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 3697
    return-object p0
.end method

.method public setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 3685
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 3686
    return-object p0
.end method

.method public setCustomHeadsUpContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "contentView"    # Landroid/widget/RemoteViews;

    .line 3707
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 3708
    return-object p0
.end method

.method public setDefaults(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "defaults"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3997
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    .line 3998
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 3748
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 3749
    return-object p0
.end method

.method public setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "extras"    # Landroid/os/Bundle;

    .line 4153
    if-eqz p1, :cond_0

    .line 4154
    iput-object p1, p0, Landroid/app/Notification$Builder;->mUserExtras:Landroid/os/Bundle;

    .line 4156
    :cond_0
    return-object p0
.end method

.method public setFlag(IZ)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .line 4307
    if-eqz p2, :cond_0

    .line 4308
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 4310
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 4312
    :goto_0
    return-object p0
.end method

.method public setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "intent"    # Landroid/app/PendingIntent;
    .param p2, "highPriority"    # Z

    .line 3773
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 3774
    const/16 v0, 0x80

    invoke-virtual {p0, v0, p2}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 3775
    return-object p0
.end method

.method public setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "groupKey"    # Ljava/lang/String;

    .line 4092
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1202(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 4093
    return-object p0
.end method

.method public setGroupAlertBehavior(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "groupAlertBehavior"    # I

    .line 3383
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$802(Landroid/app/Notification;I)I

    .line 3384
    return-object p0
.end method

.method public setGroupSummary(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "isGroupSummary"    # Z

    .line 4105
    const/16 v0, 0x200

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 4106
    return-object p0
.end method

.method public setHideSmartReplies(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "hideSmartReplies"    # Z

    .line 3627
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.hideSmartReplies"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3628
    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .line 3807
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 3818
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1102(Landroid/app/Notification;Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Icon;

    .line 3819
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.largeIcon"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3820
    return-object p0
.end method

.method public setLights(III)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3900
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 3901
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 3902
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    .line 3903
    if-nez p2, :cond_0

    if-eqz p3, :cond_1

    .line 3904
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 3906
    :cond_1
    return-object p0
.end method

.method public setLocalOnly(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "localOnly"    # Z

    .line 3978
    const/16 v0, 0x100

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 3979
    return-object p0
.end method

.method public setNumber(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "number"    # I

    .line 3636
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->number:I

    .line 3637
    return-object p0
.end method

.method public setOngoing(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "ongoing"    # Z

    .line 3926
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 3927
    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "onlyAlertOnce"    # Z

    .line 3957
    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 3958
    return-object p0
.end method

.method public setPriority(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "pri"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4009
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->priority:I

    .line 4010
    return-object p0
.end method

.method public setProgress(IIZ)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "max"    # I
    .param p2, "progress"    # I
    .param p3, "indeterminate"    # Z

    .line 3662
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progress"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3663
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progressMax"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3664
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.progressIndeterminate"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3665
    return-object p0
.end method

.method public setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "n"    # Landroid/app/Notification;

    .line 4285
    if-eqz p1, :cond_0

    .line 4286
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 4287
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    goto :goto_0

    .line 4289
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    .line 4291
    :goto_0
    return-object p0
.end method

.method public setRebuildStyledRemoteViews(Z)V
    .locals 0
    .param p1, "rebuild"    # Z

    .line 5925
    iput-boolean p1, p0, Landroid/app/Notification$Builder;->mRebuildStyledRemoteViews:Z

    .line 5926
    return-void
.end method

.method public setRemoteInputHistory([Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 4
    .param p1, "text"    # [Ljava/lang/CharSequence;

    .line 3600
    if-nez p1, :cond_0

    .line 3601
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.remoteInputHistory"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 3603
    :cond_0
    const/4 v0, 0x5

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3604
    .local v0, "N":I
    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 3605
    .local v1, "safe":[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 3606
    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v2

    .line 3605
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3608
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.remoteInputHistory"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 3610
    .end local v0    # "N":I
    .end local v1    # "safe":[Ljava/lang/CharSequence;
    :goto_1
    return-object p0
.end method

.method public setSettingsText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 3581
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/Notification;->access$1002(Landroid/app/Notification;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 3582
    return-object p0
.end method

.method public setShortcutId(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "shortcutId"    # Ljava/lang/String;

    .line 3355
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$602(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 3356
    return-object p0
.end method

.method public setShowRemoteInputSpinner(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "showSpinner"    # Z

    .line 3618
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.remoteInputSpinner"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3619
    return-object p0
.end method

.method public setShowWhen(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "show"    # Z

    .line 3439
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showWhen"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3440
    return-object p0
.end method

.method public setSmallIcon(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I

    .line 3491
    if-eqz p1, :cond_0

    .line 3492
    iget-object v0, p0, Landroid/app/Notification$Builder;->mThemeContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_0

    .line 3493
    :cond_0
    const/4 v0, 0x0

    .line 3491
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSmallIcon(II)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "icon"    # I
    .param p2, "level"    # I

    .line 3508
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    .line 3509
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;

    .line 3521
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {v0, p1}, Landroid/app/Notification;->setSmallIcon(Landroid/graphics/drawable/Icon;)V

    .line 3522
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3523
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-virtual {p1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 3525
    :cond_0
    return-object p0
.end method

.method public setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sortKey"    # Ljava/lang/String;

    .line 4122
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1}, Landroid/app/Notification;->access$1302(Landroid/app/Notification;Ljava/lang/String;)Ljava/lang/String;

    .line 4123
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3833
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3834
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    sget-object v1, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    iput-object v1, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 3835
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "streamType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3847
    const-string v0, "Notification"

    const-string/jumbo v1, "setSound()"

    invoke-static {p2, v0, v1}, Landroid/media/PlayerBase;->deprecateStreamTypeForPlayback(ILjava/lang/String;Ljava/lang/String;)V

    .line 3848
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3849
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    .line 3850
    return-object p0
.end method

.method public setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "sound"    # Landroid/net/Uri;
    .param p2, "audioAttributes"    # Landroid/media/AudioAttributes;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3862
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 3863
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p2, v0, Landroid/app/Notification;->audioAttributes:Landroid/media/AudioAttributes;

    .line 3864
    return-object p0
.end method

.method public setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "style"    # Landroid/app/Notification$Style;

    .line 4249
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eq v0, p1, :cond_1

    .line 4250
    iput-object p1, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    .line 4251
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    if-eqz v0, :cond_0

    .line 4252
    iget-object v0, p0, Landroid/app/Notification$Builder;->mStyle:Landroid/app/Notification$Style;

    invoke-virtual {v0, p0}, Landroid/app/Notification$Style;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 4253
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4255
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 4258
    :cond_1
    :goto_0
    return-object p0
.end method

.method public setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 3563
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.subText"

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 3564
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "tickerText"    # Ljava/lang/CharSequence;

    .line 3784
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 3785
    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;
    .locals 0
    .param p1, "tickerText"    # Ljava/lang/CharSequence;
    .param p2, "views"    # Landroid/widget/RemoteViews;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3794
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 3796
    return-object p0
.end method

.method public setTimeout(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "durationMs"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3405
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->access$902(Landroid/app/Notification;J)J

    .line 3406
    return-object p0
.end method

.method public setTimeoutAfter(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "durationMs"    # J

    .line 3414
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0, p1, p2}, Landroid/app/Notification;->access$902(Landroid/app/Notification;J)J

    .line 3415
    return-object p0
.end method

.method public setUsesChronometer(Z)Landroid/app/Notification$Builder;
    .locals 2
    .param p1, "b"    # Z

    .line 3459
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.showChronometer"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3460
    return-object p0
.end method

.method public setVibrate([J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "pattern"    # [J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3882
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    .line 3883
    return-object p0
.end method

.method public setVisibility(I)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "visibility"    # I

    .line 4274
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput p1, v0, Landroid/app/Notification;->visibility:I

    .line 4275
    return-object p0
.end method

.method public setWhen(J)Landroid/app/Notification$Builder;
    .locals 1
    .param p1, "when"    # J

    .line 3428
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    .line 3429
    return-object p0
.end method

.method public usesStandardHeader()Z
    .locals 5

    .line 4371
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    invoke-static {v0}, Landroid/app/Notification;->access$1400(Landroid/app/Notification;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 4372
    return v1

    .line 4374
    :cond_0
    iget-object v0, p0, Landroid/app/Notification$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x18

    if-lt v0, v2, :cond_1

    .line 4375
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-nez v0, :cond_1

    .line 4376
    return v1

    .line 4379
    :cond_1
    iget-object v0, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 4380
    invoke-static {}, Landroid/app/Notification;->access$1500()Landroid/util/ArraySet;

    move-result-object v0

    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v1

    .line 4381
    .local v0, "contentViewUsesHeader":Z
    :goto_1
    iget-object v3, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    if-eqz v3, :cond_5

    .line 4382
    invoke-static {}, Landroid/app/Notification;->access$1500()Landroid/util/ArraySet;

    move-result-object v3

    iget-object v4, p0, Landroid/app/Notification$Builder;->mN:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    invoke-virtual {v4}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v3, v1

    .line 4383
    .local v3, "bigContentViewUsesHeader":Z
    :goto_3
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    goto :goto_4

    :cond_6
    move v1, v2

    :goto_4
    return v1
.end method
