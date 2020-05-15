.class public Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;
.super Ljava/lang/Object;
.source "WindowAnimationObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Observer"

.field private static final TIME_OUT:I = 0xbb8

.field private static final WINDOW_ANIMATION_TIME_OUT:I = 0x10000

.field private static final nubia_finish_app_transition:Ljava/lang/String; = "nubia_finish_app_transition"

.field private static final nubia_start_app_transition:Ljava/lang/String; = "nubia_start_app_transition"

.field private static final nubia_surface_first_show:Ljava/lang/String; = "nubia_surface_first_show"

.field private static final pattern_normal_shown_window:Ljava/lang/String; = "Window\\{.+\\s.+\\s(.+)\\}.*"

.field private static final pattern_transition:Ljava/lang/String; = ".*ActivityRecord\\{.+\\s.+\\s(.+)\\s.+\\}.*"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHasObserved:Z

.field private mListenedStarting:Z

.field private mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

.field private mObserverHandler:Landroid/os/Handler;

.field private mPackageNameObserved:Ljava/lang/String;

.field private mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

.field private mSurfaceShown:Landroid/widget/TextView;

.field private mTransitionFinish:Landroid/widget/TextView;

.field private mTransitionStart:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListenedStarting:Z

    .line 45
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mHasObserved:Z

    .line 67
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mContext:Landroid/content/Context;

    .line 68
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mObserverHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "surfaceShown"    # Landroid/widget/TextView;
    .param p3, "transitionStart"    # Landroid/widget/TextView;
    .param p4, "transitionFinish"    # Landroid/widget/TextView;

    .line 74
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;-><init>(Landroid/content/Context;)V

    .line 75
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mSurfaceShown:Landroid/widget/TextView;

    .line 76
    iput-object p3, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mTransitionStart:Landroid/widget/TextView;

    .line 77
    iput-object p4, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mTransitionFinish:Landroid/widget/TextView;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    .line 17
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;
    .param p1, "x1"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->notifyAppTransitionStartInner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;

    .line 17
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;
    .param p1, "x1"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->notifyAppTransitionFinishInner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;
    .param p1, "x1"    # Ljava/lang/String;

    .line 17
    invoke-direct {p0, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->notifySurfaceFirstShownInner(Ljava/lang/String;)V

    return-void
.end method

.method private getPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "original"    # Ljava/lang/String;
    .param p2, "regex"    # Ljava/lang/String;

    .line 144
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 145
    .local v0, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 148
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_1

    .line 149
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "pkgClassName":Ljava/lang/String;
    const-string v4, "(.*)/.*"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 159
    .local v4, "splitPatter":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 162
    .local v5, "splitMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v6

    if-lt v6, v3, :cond_0

    .line 163
    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .local v3, "output":Ljava/lang/String;
    goto :goto_0

    .line 165
    .end local v3    # "output":Ljava/lang/String;
    :cond_0
    move-object v3, v2

    .line 168
    .restart local v3    # "output":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 152
    .end local v2    # "pkgClassName":Ljava/lang/String;
    .end local v3    # "output":Ljava/lang/String;
    .end local v4    # "splitPatter":Ljava/util/regex/Pattern;
    .end local v5    # "splitMatcher":Ljava/util/regex/Matcher;
    :cond_1
    const-string v2, "Observer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cannot find package name,string="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    move-object v2, p1

    .line 154
    .restart local v2    # "pkgClassName":Ljava/lang/String;
    const/4 v3, 0x0

    return-object v3
.end method

.method private isListenedToThisPackage(Ljava/lang/String;)Z
    .locals 1
    .param p1, "current"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mPackageNameObserved:Ljava/lang/String;

    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "cn.nubia.applockmanager"

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 136
    :goto_0
    return v0
.end method

.method private notifyAppTransitionFinishInner(Ljava/lang/String;)V
    .locals 4
    .param p1, "strStop"    # Ljava/lang/String;

    .line 228
    const-string v0, ".*ActivityRecord\\{.+\\s.+\\s(.+)\\s.+\\}.*"

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->getPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "output":Ljava/lang/String;
    const-string v1, "Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stop pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; animating = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListenedStarting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListenedStarting:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 232
    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->isListenedToThisPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

    invoke-interface {v1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;->onAnimationEnd()V

    .line 234
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListenedStarting:Z

    .line 238
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mTransitionFinish:Landroid/widget/TextView;

    invoke-direct {p0, v1, p1, v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->writeMsgOnDebugView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method private notifyAppTransitionStartInner(Ljava/lang/String;)V
    .locals 4
    .param p1, "strStart"    # Ljava/lang/String;

    .line 198
    const-string v0, ".*ActivityRecord\\{.+\\s.+\\s(.+)\\s.+\\}.*"

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->getPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "output":Ljava/lang/String;
    const-string v1, "Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; animating = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListenedStarting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->isListenedToThisPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

    invoke-interface {v1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;->onAnimationStart()V

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListenedStarting:Z

    .line 210
    :cond_0
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mTransitionStart:Landroid/widget/TextView;

    invoke-direct {p0, v1, p1, v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->writeMsgOnDebugView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private notifySurfaceFirstShownInner(Ljava/lang/String;)V
    .locals 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 255
    iget-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mHasObserved:Z

    if-eqz v0, :cond_0

    .line 256
    return-void

    .line 257
    :cond_0
    const-string v0, "Window\\{.+\\s.+\\s(.+)\\}.*"

    invoke-direct {p0, p1, v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->getPackageName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "output":Ljava/lang/String;
    const-string v1, "Observer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "show pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; animating = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListenedStarting:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->isListenedToThisPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

    iget-boolean v2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListenedStarting:Z

    invoke-interface {v1, v2}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;->onSurfaceFirstShown(Z)V

    .line 262
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mHasObserved:Z

    .line 266
    :cond_1
    iget-object v1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mSurfaceShown:Landroid/widget/TextView;

    invoke-direct {p0, v1, p1, v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->writeMsgOnDebugView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method private writeMsgOnDebugView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "originalMsg"    # Ljava/lang/String;
    .param p3, "pkgName"    # Ljava/lang/String;

    .line 174
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 175
    if-eqz p3, :cond_0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Faild:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    :goto_0
    const-string v0, "Observer"

    invoke-static {v0, p2}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_1
    return-void
.end method


# virtual methods
.method public beginObserve(Ljava/lang/String;Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;)V
    .locals 4
    .param p1, "pkgNameObserved"    # Ljava/lang/String;
    .param p2, "listener"    # Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

    .line 107
    const-string v0, "Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin Observe Surface visbility, package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mHasObserved:Z

    .line 115
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mPackageNameObserved:Ljava/lang/String;

    .line 116
    iput-object p2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

    .line 117
    iput-boolean v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListenedStarting:Z

    .line 118
    invoke-static {}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->getInstance()Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->setWindowAnimationObserver(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)V

    .line 119
    return-void
.end method

.method public notifyAppTransitionFinish(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mObserverHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$3;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$3;-><init>(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method public notifyAppTransitionStart(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mObserverHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$2;-><init>(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 195
    return-void
.end method

.method public notifySurfaceFirstShown(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mObserverHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$4;

    invoke-direct {v1, p0, p1}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$4;-><init>(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 252
    return-void
.end method

.method public setSafeGuarder(Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;)V
    .locals 2
    .param p1, "safeGuarder"    # Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .line 88
    iput-object p1, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    .line 89
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mSafeGuarder:Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;

    new-instance v1, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$1;

    invoke-direct {v1, p0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$1;-><init>(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)V

    invoke-virtual {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/safeguarder/SafeGuarder;->buildSafeHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method public stopObserve()V
    .locals 3

    .line 123
    const-string v0, "Observer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop Observe Surface visbility, package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mPackageNameObserved:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/server/policy/edge/effectsutil/EffectsLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mHandler:Landroid/os/Handler;

    const/high16 v1, 0x10000

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mPackageNameObserved:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;->mListener:Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver$WindowAnimationListener;

    .line 131
    invoke-static {}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->getInstance()Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserverManager;->setWindowAnimationObserver(Lcn/nubia/server/policy/edge/effects/widowobserver/WindowAnimationObserver;)V

    .line 132
    return-void
.end method
