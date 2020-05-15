.class Lcom/android/server/policy/PhoneWindowManager$6;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/BarController$OnBarVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;

    .line 1249
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$6;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBarVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 1253
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$6;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0, p1}, Lcom/android/server/policy/PhoneWindowManager;->access$3202(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 1254
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$6;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$6;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mNavigationBar:Lcom/android/server/policy/WindowManagerPolicy$WindowState;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->setDisplayLayoutNeeded()V

    .line 1256
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$6;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityManager;->notifyAccessibilityButtonVisibilityChanged(Z)V

    .line 1257
    return-void
.end method
