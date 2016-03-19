.class final Lcom/adobe/a/b/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/a/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field public static a:Lcom/adobe/a/b/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lcom/adobe/a/b/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/adobe/a/b/e;-><init>(B)V

    sput-object v0, Lcom/adobe/a/b/e$a;->a:Lcom/adobe/a/b/e;

    return-void
.end method
