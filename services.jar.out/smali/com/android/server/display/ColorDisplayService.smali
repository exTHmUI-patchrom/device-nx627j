.class public final Lcom/android/server/display/ColorDisplayService;
.super Lcom/android/server/SystemService;
.source "ColorDisplayService.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;,
        Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;,
        Lcom/android/server/display/ColorDisplayService$CustomAutoMode;,
        Lcom/android/server/display/ColorDisplayService$AutoMode;
    }
.end annotation


# static fields
.field private static final COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;

.field private static final MATRIX_IDENTITY:[F

.field private static final TAG:Ljava/lang/String; = "ColorDisplayService"

.field private static final TRANSITION_DURATION:J = 0xbb8L


# instance fields
.field private mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

.field private mBootCompleted:Z

.field private mColorMatrixAnimator:Landroid/animation/ValueAnimator;

.field private final mColorTempCoefficients:[F

.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private mCurrentUser:I

.field private final mHandler:Landroid/os/Handler;

.field private mIsActivated:Ljava/lang/Boolean;

.field private mMatrixNight:[F

.field private mUserSetupObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 74
    const/16 v0, 0x10

    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 76
    sget-object v0, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 82
    new-instance v0, Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;-><init>(Lcom/android/server/display/ColorDisplayService$1;)V

    sput-object v0, Lcom/android/server/display/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 86
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    .line 88
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    .line 90
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/ColorDisplayService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;

    .line 61
    iget v0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/ColorDisplayService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;

    .line 61
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/ColorDisplayService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;
    .param p1, "x1"    # Z

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorDisplayService;->setAutoOpenStatus(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/ColorDisplayService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;
    .param p1, "x1"    # Z

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorDisplayService;->restoreNightDisplayByManuallyClosedStatus(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/ColorDisplayService;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;
    .param p1, "x1"    # Ljava/lang/Class;

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/display/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/ColorDisplayService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;

    .line 61
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/ContentResolver;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/content/ContentResolver;
    .param p1, "x1"    # I

    .line 61
    invoke-static {p0, p1}, Lcom/android/server/display/ColorDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/display/ColorDisplayService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;
    .param p1, "x1"    # Landroid/database/ContentObserver;

    .line 61
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/display/ColorDisplayService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;

    .line 61
    iget-boolean v0, p0, Lcom/android/server/display/ColorDisplayService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/ColorDisplayService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;

    .line 61
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService;->setUp()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/display/ColorDisplayService;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;
    .param p1, "x1"    # Landroid/animation/ValueAnimator;

    .line 61
    iput-object p1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/display/ColorDisplayService;)Lcom/android/internal/app/ColorDisplayController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/ColorDisplayService;

    .line 61
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    return-object v0
.end method

.method private applyTint(Z)V
    .locals 7
    .param p1, "immediate"    # Z

    .line 341
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 345
    :cond_0
    const-class v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    .line 346
    .local v0, "dtm":Lcom/android/server/display/DisplayTransformManager;
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayTransformManager;->getColorMatrix(I)[F

    move-result-object v2

    .line 347
    .local v2, "from":[F
    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 349
    .local v3, "to":[F
    :goto_0
    if-eqz p1, :cond_2

    .line 350
    invoke-virtual {v0, v1, v3}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    goto :goto_2

    .line 352
    :cond_2
    sget-object v1, Lcom/android/server/display/ColorDisplayService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/display/ColorDisplayService$ColorMatrixEvaluator;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 353
    if-nez v2, :cond_3

    sget-object v6, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    goto :goto_1

    :cond_3
    move-object v6, v2

    :goto_1
    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    .line 352
    invoke-static {v1, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    .line 354
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 355
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    .line 356
    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10c000d

    .line 355
    invoke-static {v4, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 357
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/server/display/ColorDisplayService$2;

    invoke-direct {v4, p0, v0}, Lcom/android/server/display/ColorDisplayService$2;-><init>(Lcom/android/server/display/ColorDisplayService;Lcom/android/server/display/DisplayTransformManager;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 364
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/server/display/ColorDisplayService$3;

    invoke-direct {v4, p0, v0, v3}, Lcom/android/server/display/ColorDisplayService$3;-><init>(Lcom/android/server/display/ColorDisplayService;Lcom/android/server/display/DisplayTransformManager;[F)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 384
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 386
    :goto_2
    return-void
.end method

.method public static getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 5
    .param p0, "localTime"    # Ljava/time/LocalTime;
    .param p1, "compareTime"    # Ljava/time/LocalDateTime;

    .line 437
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 438
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 437
    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 441
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 5
    .param p0, "localTime"    # Ljava/time/LocalTime;
    .param p1, "compareTime"    # Ljava/time/LocalDateTime;

    .line 422
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    .line 423
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    .line 422
    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    .line 426
    .local v0, "ldt":Ljava/time/LocalDateTime;
    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I

    .line 184
    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method private onUserChanged(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .line 147
    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 149
    .local v0, "cr":Landroid/content/ContentResolver;
    iget v1, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    .line 150
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 152
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    goto :goto_0

    .line 153
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/display/ColorDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_1

    .line 154
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService;->tearDown()V

    .line 158
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    .line 160
    iget v1, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    if-eq v1, v2, :cond_3

    .line 161
    iget v1, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-static {v0, v1}, Lcom/android/server/display/ColorDisplayService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 162
    new-instance v1, Lcom/android/server/display/ColorDisplayService$1;

    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/display/ColorDisplayService$1;-><init>(Lcom/android/server/display/ColorDisplayService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    .line 175
    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1

    .line 177
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/display/ColorDisplayService;->mBootCompleted:Z

    if-eqz v1, :cond_3

    .line 178
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService;->setUp()V

    .line 181
    :cond_3
    :goto_1
    return-void
.end method

.method private restoreNightDisplayByManuallyClosedStatus(Z)V
    .locals 4
    .param p1, "activate"    # Z

    .line 457
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getNDClosedManuallyFlag()I

    move-result v0

    .line 458
    .local v0, "closedNightDisplayManully":I
    if-nez v0, :cond_0

    .line 459
    const-string v1, "ColorDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set night display activate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1, p1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    .line 462
    :cond_0
    return-void
.end method

.method private setAutoOpenStatus(Z)V
    .locals 2
    .param p1, "activate"    # Z

    .line 451
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 452
    const-string v0, "ColorDisplayService"

    const-string/jumbo v1, "night display is opened automatically"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setNDOpendAutomaticlly(I)V

    .line 455
    :cond_0
    return-void
.end method

.method private setCoefficientMatrix(Landroid/content/Context;Z)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needsLinear"    # Z

    .line 326
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 327
    const v1, 0x1070038

    goto :goto_0

    .line 328
    :cond_0
    const v1, 0x1070039

    .line 326
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "coefficients":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v2, 0x9

    if-ge v1, v2, :cond_1

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 330
    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    aput v3, v2, v1

    .line 329
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 332
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private setMatrix(I[F)V
    .locals 9
    .param p1, "colorTemperature"    # I
    .param p2, "outTemp"    # [F

    .line 395
    array-length v0, p2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    .line 396
    const-string v0, "ColorDisplayService"

    const-string v1, "The display transformation matrix must be 4x4"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 402
    mul-int v0, p1, p1

    int-to-float v0, v0

    .line 403
    .local v0, "squareTemperature":F
    iget-object v2, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    aget v2, v2, v1

    mul-float/2addr v2, v0

    int-to-float v3, p1

    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v4, 0x2

    aget v3, v3, v4

    add-float/2addr v2, v3

    .line 405
    .local v2, "red":F
    iget-object v3, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    mul-float/2addr v3, v0

    int-to-float v4, p1

    iget-object v5, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v6, 0x4

    aget v5, v5, v6

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    add-float/2addr v3, v4

    .line 407
    .local v3, "green":F
    iget-object v4, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v6, 0x6

    aget v4, v4, v6

    mul-float/2addr v4, v0

    int-to-float v6, p1

    iget-object v7, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/4 v8, 0x7

    aget v7, v7, v8

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/display/ColorDisplayService;->mColorTempCoefficients:[F

    const/16 v7, 0x8

    aget v6, v6, v7

    add-float/2addr v4, v6

    .line 409
    .local v4, "blue":F
    aput v2, p2, v1

    .line 410
    aput v3, p2, v5

    .line 411
    const/16 v1, 0xa

    aput v4, p2, v1

    .line 412
    return-void
.end method

.method private setUp()V
    .locals 3

    .line 188
    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUp: currentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 191
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 193
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setNDClosedManuallyFlag(I)V

    .line 197
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    .line 202
    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/display/DisplayTransformManager;->needsLinearColorMatrix()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ColorDisplayService;->setCoefficientMatrix(Landroid/content/Context;Z)V

    .line 205
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorTemperature()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ColorDisplayService;->setMatrix(I[F)V

    .line 208
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->onAutoModeChanged(I)V

    .line 211
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->onActivated(Z)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->recoverNightDisplay()V

    .line 217
    return-void
.end method

.method private tearDown()V
    .locals 3

    .line 220
    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tearDown: currentUser="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 224
    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onStop()V

    .line 229
    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 234
    iput-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    .line 236
    :cond_2
    return-void
.end method


# virtual methods
.method public onAccessibilityTransformChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .line 319
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->onDisplayColorModeChanged(I)V

    .line 320
    return-void
.end method

.method public onActivated(Z)V
    .locals 2
    .param p1, "activated"    # Z

    .line 240
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_3

    .line 241
    :cond_0
    const-string v0, "ColorDisplayService"

    if-eqz p1, :cond_1

    const-string v1, "Turning on night display"

    goto :goto_0

    :cond_1
    const-string v1, "Turning off night display"

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    .line 245
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onActivated(Z)V

    .line 249
    :cond_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/ColorDisplayService;->applyTint(Z)V

    .line 252
    :cond_3
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 3
    .param p1, "autoMode"    # I

    .line 256
    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAutoModeChanged: autoMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onStop()V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    .line 263
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 264
    new-instance v0, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/ColorDisplayService$CustomAutoMode;-><init>(Lcom/android/server/display/ColorDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    goto :goto_0

    .line 265
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 266
    new-instance v0, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/display/ColorDisplayService$TwilightAutoMode;-><init>(Lcom/android/server/display/ColorDisplayService;)V

    iput-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    .line 269
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_3

    .line 270
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onStart()V

    .line 272
    :cond_3
    return-void
.end method

.method public onBootPhase(I)V
    .locals 2
    .param p1, "phase"    # I

    .line 111
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_0

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/ColorDisplayService;->mBootCompleted:Z

    .line 115
    iget v0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/server/display/ColorDisplayService;->setUp()V

    .line 119
    :cond_0
    return-void
.end method

.method public onColorTemperatureChanged(I)V
    .locals 1
    .param p1, "colorTemperature"    # I

    .line 294
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    invoke-direct {p0, p1, v0}, Lcom/android/server/display/ColorDisplayService;->setMatrix(I[F)V

    .line 295
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/ColorDisplayService;->applyTint(Z)V

    .line 296
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 3
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 285
    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomEndTimeChanged: endTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    .line 290
    :cond_0
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 3
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 276
    const-string v0, "ColorDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomStartTimeChanged: startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mAutoMode:Lcom/android/server/display/ColorDisplayService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/display/ColorDisplayService$AutoMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    .line 281
    :cond_0
    return-void
.end method

.method public onDisplayColorModeChanged(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 300
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 301
    return-void

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mColorMatrixAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 309
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/ColorDisplayService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/display/DisplayTransformManager;->needsLinearColorMatrix(I)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ColorDisplayService;->setCoefficientMatrix(Landroid/content/Context;Z)V

    .line 310
    iget-object v0, p0, Lcom/android/server/display/ColorDisplayService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorTemperature()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/ColorDisplayService;->setMatrix(I[F)V

    .line 312
    const-class v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/display/ColorDisplayService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    .line 313
    .local v0, "dtm":Lcom/android/server/display/DisplayTransformManager;
    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mIsActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/ColorDisplayService;->mMatrixNight:[F

    goto :goto_0

    .line 314
    :cond_2
    sget-object v1, Lcom/android/server/display/ColorDisplayService;->MATRIX_IDENTITY:[F

    .line 313
    :goto_0
    invoke-virtual {v0, p1, v1}, Lcom/android/server/display/DisplayTransformManager;->setColorMode(I[F)Z

    .line 315
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 107
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 123
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    .line 125
    iget v0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 126
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorDisplayService;->onUserChanged(I)V

    .line 128
    :cond_0
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    .line 139
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    .line 141
    iget v0, p0, Lcom/android/server/display/ColorDisplayService;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    .line 142
    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/display/ColorDisplayService;->onUserChanged(I)V

    .line 144
    :cond_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 0
    .param p1, "userHandle"    # I

    .line 132
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/display/ColorDisplayService;->onUserChanged(I)V

    .line 135
    return-void
.end method
