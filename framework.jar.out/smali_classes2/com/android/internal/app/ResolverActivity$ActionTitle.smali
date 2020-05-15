.class final enum Lcom/android/internal/app/ResolverActivity$ActionTitle;
.super Ljava/lang/Enum;
.source "ResolverActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActionTitle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/app/ResolverActivity$ActionTitle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

.field public static final enum VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;


# instance fields
.field public final action:Ljava/lang/String;

.field public final labelRes:I

.field public final namedTitleRes:I

.field public final titleRes:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 156
    new-instance v7, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v1, "VIEW"

    const-string v3, "android.intent.action.VIEW"

    const/4 v2, 0x0

    const v4, 0x10406c7

    const v5, 0x10406c9

    const v6, 0x10406c8

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v7, Lcom/android/internal/app/ResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 160
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v9, "EDIT"

    const-string v11, "android.intent.action.EDIT"

    const/4 v10, 0x1

    const v12, 0x10406b8

    const v13, 0x10406ba

    const v14, 0x10406b9

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 164
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v2, "SEND"

    const-string v4, "android.intent.action.SEND"

    const/4 v3, 0x2

    const v5, 0x10406c1

    const v6, 0x10406c3

    const v7, 0x10406c2

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 168
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v9, "SENDTO"

    const-string v11, "android.intent.action.SENDTO"

    const/4 v10, 0x3

    const v12, 0x10406c4

    const v13, 0x10406c6

    const v14, 0x10406c5

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 172
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v2, "SEND_MULTIPLE"

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 176
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v9, "CAPTURE_IMAGE"

    const-string v11, "android.media.action.IMAGE_CAPTURE"

    const/4 v10, 0x5

    const v12, 0x10406be

    const v13, 0x10406c0

    const v14, 0x10406bf

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 180
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v2, "DEFAULT"

    const/4 v3, 0x6

    const/4 v4, 0x0

    const v5, 0x10406b5

    const v6, 0x10406b7

    const v7, 0x10406b6

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 184
    new-instance v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const-string v9, "HOME"

    const-string v11, "android.intent.action.MAIN"

    const/4 v10, 0x7

    const v12, 0x10406bb

    const v13, 0x10406bd

    const v14, 0x10406bc

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/app/ResolverActivity$ActionTitle;-><init>(Ljava/lang/String;ILjava/lang/String;III)V

    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    .line 155
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/app/ResolverActivity$ActionTitle;

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->VIEW:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->EDIT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SENDTO:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->SEND_MULTIPLE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->CAPTURE_IMAGE:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;III)V
    .locals 0
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "titleRes"    # I
    .param p5, "namedTitleRes"    # I
    .param p6, "labelRes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III)V"
        }
    .end annotation

    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 195
    iput-object p3, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    .line 196
    iput p4, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->titleRes:I

    .line 197
    iput p5, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->namedTitleRes:I

    .line 198
    iput p6, p0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->labelRes:I

    .line 199
    return-void
.end method

.method public static forAction(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .locals 5
    .param p0, "action"    # Ljava/lang/String;

    .line 202
    invoke-static {}, Lcom/android/internal/app/ResolverActivity$ActionTitle;->values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 203
    .local v3, "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    sget-object v4, Lcom/android/internal/app/ResolverActivity$ActionTitle;->HOME:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    if-eq v3, v4, :cond_0

    if-eqz p0, :cond_0

    iget-object v4, v3, Lcom/android/internal/app/ResolverActivity$ActionTitle;->action:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    return-object v3

    .line 202
    .end local v3    # "title":Lcom/android/internal/app/ResolverActivity$ActionTitle;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 207
    :cond_1
    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->DEFAULT:Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 155
    const-class v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/app/ResolverActivity$ActionTitle;
    .locals 1

    .line 155
    sget-object v0, Lcom/android/internal/app/ResolverActivity$ActionTitle;->$VALUES:[Lcom/android/internal/app/ResolverActivity$ActionTitle;

    invoke-virtual {v0}, [Lcom/android/internal/app/ResolverActivity$ActionTitle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/app/ResolverActivity$ActionTitle;

    return-object v0
.end method
