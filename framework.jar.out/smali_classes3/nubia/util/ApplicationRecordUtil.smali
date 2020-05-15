.class public Lnubia/util/ApplicationRecordUtil;
.super Ljava/lang/Object;
.source "ApplicationRecordUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static getApplicationName()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    const/16 v0, 0x8

    .line 15
    .local v0, "arraylistNum":I
    :try_start_0
    invoke-static {v0}, Lnubia/os/ApplicationManager$Trigger;->getApplicationRecond(I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 16
    .end local v0    # "arraylistNum":I
    :catch_0
    move-exception v0

    .line 17
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 18
    const/4 v1, 0x0

    return-object v1
.end method
