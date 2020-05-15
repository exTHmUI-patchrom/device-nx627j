.class Lcom/android/internal/policy/DecorContext;
.super Landroid/view/ContextThemeWrapper;
.source "DecorContext.java"


# instance fields
.field private mActivityContext:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityResources:Landroid/content/res/Resources;

.field private mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityContext"    # Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/policy/DecorContext;->mActivityContext:Ljava/lang/ref/WeakReference;

    .line 45
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/DecorContext;->mActivityResources:Landroid/content/res/Resources;

    .line 46
    return-void
.end method


# virtual methods
.method public getAssets()Landroid/content/res/AssetManager;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mActivityResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mActivityContext:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 71
    .local v0, "activityContext":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/DecorContext;->mActivityResources:Landroid/content/res/Resources;

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/DecorContext;->mActivityResources:Landroid/content/res/Resources;

    return-object v1
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 55
    const-string v0, "window"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 57
    const-string v0, "window"

    .line 58
    invoke-super {p0, v0}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManagerImpl;

    .line 59
    .local v0, "wm":Landroid/view/WindowManagerImpl;
    iget-object v1, p0, Lcom/android/internal/policy/DecorContext;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    invoke-virtual {v0, v1}, Landroid/view/WindowManagerImpl;->createLocalWindowManager(Landroid/view/Window;)Landroid/view/WindowManagerImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/DecorContext;->mWindowManager:Landroid/view/WindowManager;

    .line 61
    .end local v0    # "wm":Landroid/view/WindowManagerImpl;
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/DecorContext;->mWindowManager:Landroid/view/WindowManager;

    return-object v0

    .line 63
    :cond_1
    invoke-super {p0, p1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setPhoneWindow(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 1
    .param p1, "phoneWindow"    # Lcom/android/internal/policy/PhoneWindow;

    .line 49
    iput-object p1, p0, Lcom/android/internal/policy/DecorContext;->mPhoneWindow:Lcom/android/internal/policy/PhoneWindow;

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/DecorContext;->mWindowManager:Landroid/view/WindowManager;

    .line 51
    return-void
.end method
