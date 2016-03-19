.class final Lcom/adobe/mobile/i$a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/mobile/i$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/HashMap;

.field final synthetic b:Lcom/adobe/mobile/i$a;


# direct methods
.method constructor <init>(Lcom/adobe/mobile/i$a;Ljava/util/HashMap;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/adobe/mobile/i$a$1;->b:Lcom/adobe/mobile/i$a;

    iput-object p2, p0, Lcom/adobe/mobile/i$a$1;->a:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method
