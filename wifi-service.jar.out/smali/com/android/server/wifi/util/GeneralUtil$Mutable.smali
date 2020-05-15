.class public final Lcom/android/server/wifi/util/GeneralUtil$Mutable;
.super Ljava/lang/Object;
.source "GeneralUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/util/GeneralUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Mutable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    .local p0, "this":Lcom/android/server/wifi/util/GeneralUtil$Mutable;, "Lcom/android/server/wifi/util/GeneralUtil$Mutable<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wifi/util/GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/android/server/wifi/util/GeneralUtil$Mutable;, "Lcom/android/server/wifi/util/GeneralUtil$Mutable<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/server/wifi/util/GeneralUtil$Mutable;->value:Ljava/lang/Object;

    .line 41
    return-void
.end method
