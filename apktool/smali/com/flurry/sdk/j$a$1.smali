.class final Lcom/flurry/sdk/j$a$1;
.super Ljava/io/DataOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/j$a;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/j$a;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/flurry/sdk/j$a$1;->a:Lcom/flurry/sdk/j$a;

    invoke-direct {p0, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
