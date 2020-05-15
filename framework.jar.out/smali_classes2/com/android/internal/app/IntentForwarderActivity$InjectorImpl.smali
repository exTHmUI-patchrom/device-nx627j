.class Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;
.super Ljava/lang/Object;
.source "IntentForwarderActivity.java"

# interfaces
.implements Lcom/android/internal/app/IntentForwarderActivity$Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IntentForwarderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InjectorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/IntentForwarderActivity;


# direct methods
.method private constructor <init>(Lcom/android/internal/app/IntentForwarderActivity;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/app/IntentForwarderActivity;Lcom/android/internal/app/IntentForwarderActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/app/IntentForwarderActivity;
    .param p2, "x1"    # Lcom/android/internal/app/IntentForwarderActivity$1;

    .line 254
    invoke-direct {p0, p1}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;-><init>(Lcom/android/internal/app/IntentForwarderActivity;)V

    return-void
.end method


# virtual methods
.method public getIPackageManager()Landroid/content/pm/IPackageManager;
    .locals 1

    .line 258
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/IntentForwarderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .locals 2

    .line 263
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/IntentForwarderActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    return-object v0
.end method

.method public resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public showToast(II)V
    .locals 2
    .param p1, "messageId"    # I
    .param p2, "duration"    # I

    .line 278
    iget-object v0, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    iget-object v1, p0, Lcom/android/internal/app/IntentForwarderActivity$InjectorImpl;->this$0:Lcom/android/internal/app/IntentForwarderActivity;

    invoke-virtual {v1, p1}, Lcom/android/internal/app/IntentForwarderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 279
    return-void
.end method
