.class final enum Landroid/mtp/MtpStorageManager$MtpOperation;
.super Ljava/lang/Enum;
.source "MtpStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MtpOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/mtp/MtpStorageManager$MtpOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/mtp/MtpStorageManager$MtpOperation;

.field public static final enum ADD:Landroid/mtp/MtpStorageManager$MtpOperation;

.field public static final enum COPY:Landroid/mtp/MtpStorageManager$MtpOperation;

.field public static final enum DELETE:Landroid/mtp/MtpStorageManager$MtpOperation;

.field public static final enum NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

.field public static final enum RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 122
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpOperation;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/mtp/MtpStorageManager$MtpOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 123
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpOperation;

    const-string v1, "ADD"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Landroid/mtp/MtpStorageManager$MtpOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->ADD:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 124
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpOperation;

    const-string v1, "RENAME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Landroid/mtp/MtpStorageManager$MtpOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 125
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpOperation;

    const-string v1, "COPY"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Landroid/mtp/MtpStorageManager$MtpOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->COPY:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 126
    new-instance v0, Landroid/mtp/MtpStorageManager$MtpOperation;

    const-string v1, "DELETE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Landroid/mtp/MtpStorageManager$MtpOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->DELETE:Landroid/mtp/MtpStorageManager$MtpOperation;

    .line 121
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/mtp/MtpStorageManager$MtpOperation;

    sget-object v1, Landroid/mtp/MtpStorageManager$MtpOperation;->NONE:Landroid/mtp/MtpStorageManager$MtpOperation;

    aput-object v1, v0, v2

    sget-object v1, Landroid/mtp/MtpStorageManager$MtpOperation;->ADD:Landroid/mtp/MtpStorageManager$MtpOperation;

    aput-object v1, v0, v3

    sget-object v1, Landroid/mtp/MtpStorageManager$MtpOperation;->RENAME:Landroid/mtp/MtpStorageManager$MtpOperation;

    aput-object v1, v0, v4

    sget-object v1, Landroid/mtp/MtpStorageManager$MtpOperation;->COPY:Landroid/mtp/MtpStorageManager$MtpOperation;

    aput-object v1, v0, v5

    sget-object v1, Landroid/mtp/MtpStorageManager$MtpOperation;->DELETE:Landroid/mtp/MtpStorageManager$MtpOperation;

    aput-object v1, v0, v6

    sput-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->$VALUES:[Landroid/mtp/MtpStorageManager$MtpOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 121
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpOperation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 121
    const-class v0, Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/mtp/MtpStorageManager$MtpOperation;

    return-object v0
.end method

.method public static values()[Landroid/mtp/MtpStorageManager$MtpOperation;
    .locals 1

    .line 121
    sget-object v0, Landroid/mtp/MtpStorageManager$MtpOperation;->$VALUES:[Landroid/mtp/MtpStorageManager$MtpOperation;

    invoke-virtual {v0}, [Landroid/mtp/MtpStorageManager$MtpOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/mtp/MtpStorageManager$MtpOperation;

    return-object v0
.end method
