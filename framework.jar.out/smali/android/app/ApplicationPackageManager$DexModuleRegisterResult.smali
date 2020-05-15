.class Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;
.super Ljava/lang/Object;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ApplicationPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DexModuleRegisterResult"
.end annotation


# instance fields
.field final dexModulePath:Ljava/lang/String;

.field final message:Ljava/lang/String;

.field final success:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "dexModulePath"    # Ljava/lang/String;
    .param p2, "success"    # Z
    .param p3, "message"    # Ljava/lang/String;

    .line 2877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2878
    iput-object p1, p0, Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;->dexModulePath:Ljava/lang/String;

    .line 2879
    iput-boolean p2, p0, Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;->success:Z

    .line 2880
    iput-object p3, p0, Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;->message:Ljava/lang/String;

    .line 2881
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLjava/lang/String;Landroid/app/ApplicationPackageManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Landroid/app/ApplicationPackageManager$1;

    .line 2872
    invoke-direct {p0, p1, p2, p3}, Landroid/app/ApplicationPackageManager$DexModuleRegisterResult;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
