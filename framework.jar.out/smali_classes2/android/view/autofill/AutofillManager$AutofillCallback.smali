.class public abstract Landroid/view/autofill/AutofillManager$AutofillCallback;
.super Ljava/lang/Object;
.source "AutofillManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AutofillCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/autofill/AutofillManager$AutofillCallback$AutofillEventType;
    }
.end annotation


# static fields
.field public static final EVENT_INPUT_HIDDEN:I = 0x2

.field public static final EVENT_INPUT_SHOWN:I = 0x1

.field public static final EVENT_INPUT_UNAVAILABLE:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutofillEvent(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # I

    .line 2757
    return-void
.end method

.method public onAutofillEvent(Landroid/view/View;II)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "virtualId"    # I
    .param p3, "event"    # I

    .line 2769
    return-void
.end method
