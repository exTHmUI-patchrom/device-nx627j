.class public final Landroid/util/MutableChar;
.super Ljava/lang/Object;
.source "MutableChar.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public value:C


# direct methods
.method public constructor <init>(C)V
    .locals 0
    .param p1, "value"    # C

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-char p1, p0, Landroid/util/MutableChar;->value:C

    .line 28
    return-void
.end method
