.class Landroid/view/accessibility/AccessibilityRequestPreparer$ViewAttachStateListener;
.super Ljava/lang/Object;
.source "AccessibilityRequestPreparer.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/accessibility/AccessibilityRequestPreparer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewAttachStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/accessibility/AccessibilityRequestPreparer;


# direct methods
.method private constructor <init>(Landroid/view/accessibility/AccessibilityRequestPreparer;)V
    .locals 0

    .line 106
    iput-object p1, p0, Landroid/view/accessibility/AccessibilityRequestPreparer$ViewAttachStateListener;->this$0:Landroid/view/accessibility/AccessibilityRequestPreparer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/accessibility/AccessibilityRequestPreparer;Landroid/view/accessibility/AccessibilityRequestPreparer$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/accessibility/AccessibilityRequestPreparer;
    .param p2, "x1"    # Landroid/view/accessibility/AccessibilityRequestPreparer$1;

    .line 106
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityRequestPreparer$ViewAttachStateListener;-><init>(Landroid/view/accessibility/AccessibilityRequestPreparer;)V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 109
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    .line 115
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iget-object v2, p0, Landroid/view/accessibility/AccessibilityRequestPreparer$ViewAttachStateListener;->this$0:Landroid/view/accessibility/AccessibilityRequestPreparer;

    .line 116
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityRequestPreparer(Landroid/view/accessibility/AccessibilityRequestPreparer;)V

    .line 118
    :cond_0
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 119
    return-void
.end method
