.class public final Lcom/adobe/b/c/a/b/a/d/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/b/c/a/b/a/d/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/adobe/b/c/a/b/a/d/a/e$a;->a:Ljava/lang/Object;

    .line 32
    iput-object p2, p0, Lcom/adobe/b/c/a/b/a/d/a/e$a;->b:Ljava/lang/Object;

    .line 33
    return-void
.end method
