.class public final Lcom/urbanairship/push/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/urbanairship/push/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/urbanairship/push/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/urbanairship/push/a/d$a;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lcom/urbanairship/push/a/c;)Lcom/urbanairship/push/a/d$a;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/urbanairship/push/a/d$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-object p0
.end method

.method public final a()Lcom/urbanairship/push/a/d;
    .locals 3

    .prologue
    .line 121
    new-instance v0, Lcom/urbanairship/push/a/d;

    iget-object v1, p0, Lcom/urbanairship/push/a/d$a;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/urbanairship/push/a/d;-><init>(Ljava/util/List;B)V

    return-object v0
.end method
