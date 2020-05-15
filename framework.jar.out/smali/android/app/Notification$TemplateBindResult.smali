.class Landroid/app/Notification$TemplateBindResult;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TemplateBindResult"
.end annotation


# instance fields
.field mIconMarginEnd:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Notification$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/Notification$1;

    .line 9796
    invoke-direct {p0}, Landroid/app/Notification$TemplateBindResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getIconMarginEnd()I
    .locals 1

    .line 9804
    iget v0, p0, Landroid/app/Notification$TemplateBindResult;->mIconMarginEnd:I

    return v0
.end method

.method public setIconMarginEnd(I)V
    .locals 0
    .param p1, "iconMarginEnd"    # I

    .line 9808
    iput p1, p0, Landroid/app/Notification$TemplateBindResult;->mIconMarginEnd:I

    .line 9809
    return-void
.end method
