.class public Landroid/net/wifi/WifiConfiguration$SuiteBCipher;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuiteBCipher"
.end annotation


# static fields
.field public static final ECDHE_ECDSA:I = 0x0

.field public static final ECDHE_RSA:I = 0x1

.field public static final strings:[Ljava/lang/String;

.field public static final varName:Ljava/lang/String; = "SuiteB"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 367
    const-string v0, "ECDHE_ECDSA"

    const-string v1, "ECDHE_RSA"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$SuiteBCipher;->strings:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
