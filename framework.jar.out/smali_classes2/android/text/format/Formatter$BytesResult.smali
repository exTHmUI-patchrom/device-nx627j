.class public Landroid/text/format/Formatter$BytesResult;
.super Ljava/lang/Object;
.source "Formatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/format/Formatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BytesResult"
.end annotation


# instance fields
.field public final roundedBytes:J

.field public final units:Ljava/lang/String;

.field public final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "units"    # Ljava/lang/String;
    .param p3, "roundedBytes"    # J

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    .line 57
    iput-wide p3, p0, Landroid/text/format/Formatter$BytesResult;->roundedBytes:J

    .line 58
    return-void
.end method
