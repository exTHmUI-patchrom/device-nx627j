.class Landroid/view/View$VisibilityChangeForAutofillHandler;
.super Landroid/os/Handler;
.source "View.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisibilityChangeForAutofillHandler"
.end annotation


# instance fields
.field private final mAfm:Landroid/view/autofill/AutofillManager;

.field private final mView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/autofill/AutofillManager;Landroid/view/View;)V
    .locals 0
    .param p1, "afm"    # Landroid/view/autofill/AutofillManager;
    .param p2, "view"    # Landroid/view/View;

    .line 26387
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 26388
    iput-object p1, p0, Landroid/view/View$VisibilityChangeForAutofillHandler;->mAfm:Landroid/view/autofill/AutofillManager;

    .line 26389
    iput-object p2, p0, Landroid/view/View$VisibilityChangeForAutofillHandler;->mView:Landroid/view/View;

    .line 26390
    return-void
.end method

.method synthetic constructor <init>(Landroid/view/autofill/AutofillManager;Landroid/view/View;Landroid/view/View$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/autofill/AutofillManager;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/view/View$1;

    .line 26382
    invoke-direct {p0, p1, p2}, Landroid/view/View$VisibilityChangeForAutofillHandler;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 26394
    iget-object v0, p0, Landroid/view/View$VisibilityChangeForAutofillHandler;->mAfm:Landroid/view/autofill/AutofillManager;

    iget-object v1, p0, Landroid/view/View$VisibilityChangeForAutofillHandler;->mView:Landroid/view/View;

    iget-object v2, p0, Landroid/view/View$VisibilityChangeForAutofillHandler;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/autofill/AutofillManager;->notifyViewVisibilityChanged(Landroid/view/View;Z)V

    .line 26395
    return-void
.end method
