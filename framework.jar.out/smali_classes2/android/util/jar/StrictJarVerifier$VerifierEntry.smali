.class Landroid/util/jar/StrictJarVerifier$VerifierEntry;
.super Ljava/io/OutputStream;
.source "StrictJarVerifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VerifierEntry"
.end annotation


# instance fields
.field private final certChains:[[Ljava/security/cert/Certificate;

.field private final digest:Ljava/security/MessageDigest;

.field private final hash:[B

.field private final name:Ljava/lang/String;

.field private final verifiedEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/security/MessageDigest;[B[[Ljava/security/cert/Certificate;Ljava/util/Hashtable;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "digest"    # Ljava/security/MessageDigest;
    .param p3, "hash"    # [B
    .param p4, "certChains"    # [[Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/MessageDigest;",
            "[B[[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .line 113
    .local p5, "verifedEntries":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;[[Ljava/security/cert/Certificate;>;"
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 114
    iput-object p1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    .line 116
    iput-object p3, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->hash:[B

    .line 117
    iput-object p4, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->certChains:[[Ljava/security/cert/Certificate;

    .line 118
    iput-object p5, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verifiedEntries:Ljava/util/Hashtable;

    .line 119
    return-void
.end method


# virtual methods
.method verify()V
    .locals 4

    .line 149
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 150
    .local v0, "d":[B
    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->hash:[B

    invoke-static {v0, v1}, Landroid/util/jar/StrictJarVerifier;->access$000([B[B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verifiedEntries:Ljava/util/Hashtable;

    iget-object v2, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    iget-object v3, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->certChains:[[Ljava/security/cert/Certificate;

    invoke-virtual {v1, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void

    .line 151
    :cond_0
    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    iget-object v2, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    const-string v3, "META-INF/MANIFEST.MF"

    invoke-static {v3, v1, v2}, Landroid/util/jar/StrictJarVerifier;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    move-result-object v1

    throw v1
.end method

.method public write(I)V
    .locals 2
    .param p1, "value"    # I

    .line 126
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 127
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "nbytes"    # I

    .line 134
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 135
    return-void
.end method
