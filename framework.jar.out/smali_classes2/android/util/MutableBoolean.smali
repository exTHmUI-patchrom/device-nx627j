.class public final Landroid/util/MutableBoolean;
.super Ljava/lang/Object;
.source "MutableBoolean.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public value:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "value"    # Z

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Landroid/util/MutableBoolean;->value:Z

    .line 28
    return-void
.end method
