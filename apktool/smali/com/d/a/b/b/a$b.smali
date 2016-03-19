.class public final Lcom/d/a/b/b/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/d/a/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "b"
.end annotation


# instance fields
.field public final a:Lcom/d/a/b/a/e;

.field public final b:Lcom/d/a/b/b/a$a;


# direct methods
.method protected constructor <init>(Lcom/d/a/b/a/e;Lcom/d/a/b/b/a$a;)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput-object p1, p0, Lcom/d/a/b/b/a$b;->a:Lcom/d/a/b/a/e;

    .line 242
    iput-object p2, p0, Lcom/d/a/b/b/a$b;->b:Lcom/d/a/b/b/a$a;

    .line 243
    return-void
.end method
