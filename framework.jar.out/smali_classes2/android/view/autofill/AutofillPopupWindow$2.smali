.class Landroid/view/autofill/AutofillPopupWindow$2;
.super Landroid/view/View;
.source "AutofillPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/autofill/AutofillPopupWindow;->update(Landroid/view/View;IIIILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/autofill/AutofillPopupWindow;

.field final synthetic val$anchor:Landroid/view/View;

.field final synthetic val$mLocationOnScreen:[I


# direct methods
.method constructor <init>(Landroid/view/autofill/AutofillPopupWindow;Landroid/content/Context;[ILandroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/autofill/AutofillPopupWindow;
    .param p2, "context"    # Landroid/content/Context;

    .line 139
    iput-object p1, p0, Landroid/view/autofill/AutofillPopupWindow$2;->this$0:Landroid/view/autofill/AutofillPopupWindow;

    iput-object p3, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$mLocationOnScreen:[I

    iput-object p4, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnAttachStateChangeListener;

    .line 179
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 180
    return-void
.end method

.method public getAccessibilityViewId()I
    .locals 1

    .line 148
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v0

    return v0
.end method

.method public getApplicationWindowToken()Landroid/os/IBinder;
    .locals 1

    .line 158
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutDirection()I
    .locals 1

    .line 168
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public getLocationOnScreen([I)V
    .locals 2
    .param p1, "location"    # [I

    .line 142
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$mLocationOnScreen:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    aput v0, p1, v1

    .line 143
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$mLocationOnScreen:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    aput v0, p1, v1

    .line 144
    return-void
.end method

.method public getRootView()Landroid/view/View;
    .locals 1

    .line 163
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTreeObserver()Landroid/view/ViewTreeObserver;
    .locals 1

    .line 153
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    return-object v0
.end method

.method public getWindowDisplayFrame(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 173
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->getWindowDisplayFrame(Landroid/graphics/Rect;)V

    .line 174
    return-void
.end method

.method public getWindowToken()Landroid/os/IBinder;
    .locals 1

    .line 200
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    .line 190
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0
.end method

.method public removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnAttachStateChangeListener;

    .line 185
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 186
    return-void
.end method

.method public requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z
    .locals 1
    .param p1, "rectangle"    # Landroid/graphics/Rect;
    .param p2, "immediate"    # Z

    .line 195
    iget-object v0, p0, Landroid/view/autofill/AutofillPopupWindow$2;->val$anchor:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method
