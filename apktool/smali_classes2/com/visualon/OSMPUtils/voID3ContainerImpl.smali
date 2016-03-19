.class public Lcom/visualon/OSMPUtils/voID3ContainerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/visualon/OSMPUtils/voID3Container;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@voID3ContainerImpl"

.field private static final messageCustomTag:I = -0xf0ffffc


# instance fields
.field private customerTagList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/visualon/OSMPUtils/voOSTimedTag;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

.field private mID3listener:Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;

.field private final mMutex:Ljava/util/concurrent/locks/ReentrantLock;

.field private mSourceUrl:Ljava/lang/String;

.field treeMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private urlPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v3, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mSourceUrl:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->urlPath:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/TreeMap;

    new-instance v1, Lcom/visualon/OSMPUtils/voID3ContainerImpl$1;

    invoke-direct {v1, p0}, Lcom/visualon/OSMPUtils/voID3ContainerImpl$1;-><init>(Lcom/visualon/OSMPUtils/voID3ContainerImpl;)V

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->treeMap:Ljava/util/TreeMap;

    .line 64
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v1, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;-><init>(Lcom/visualon/OSMPUtils/voID3ContainerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    .line 66
    const-string v0, "@@@voID3ContainerImpl"

    const-string v1, "Looper.myLooper()"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    new-instance v1, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    invoke-direct {v1, p0, v0}, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;-><init>(Lcom/visualon/OSMPUtils/voID3ContainerImpl;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    .line 69
    const-string v0, "@@@voID3ContainerImpl"

    const-string v1, "getMainLooper()"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_1
    iput-object v3, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/visualon/OSMPUtils/voID3ContainerImpl;)Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/visualon/OSMPUtils/voID3ContainerImpl;)Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mID3listener:Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;

    return-object v0
.end method


# virtual methods
.method public addID3(Lcom/visualon/OSMPUtils/voOSTimedTag;)V
    .locals 2

    .prologue
    .line 268
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 270
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public check(J)V
    .locals 7

    .prologue
    .line 83
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 85
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    monitor-exit v1

    .line 124
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSTimedTag;

    .line 88
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSTimedTag;->TimeStamp()J

    move-result-wide v4

    cmp-long v3, v4, p1

    if-lez v3, :cond_4

    .line 90
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSTimedTag;->TimeStamp()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 93
    const-wide/16 v4, 0x0

    cmp-long v0, p1, v4

    if-nez v0, :cond_2

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 95
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    const v2, -0xf0ffffc

    const-wide/16 v4, 0x64

    invoke-virtual {v0, v2, v4, v5}, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 99
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    const v4, -0xf0ffffc

    invoke-virtual {v0, v4, v2, v3}, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 116
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/visualon/OSMPUtils/voOSTimedTag;

    .line 104
    :cond_4
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSTimedTag;->TimeStamp()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-ltz v3, :cond_6

    .line 106
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mID3listener:Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;

    if-eqz v3, :cond_5

    .line 108
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mID3listener:Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;

    const v4, 0x2000020

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6, v0}, Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;->onSendID3Event(IIILjava/lang/Object;)I

    .line 110
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 111
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 113
    const/4 v0, 0x0

    .line 118
    :cond_6
    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSTimedTag;->TimeStamp()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 121
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    const v4, -0xf0ffffc

    invoke-virtual {v0, v4, v2, v3}, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public getThumbnailByTime(I)Ljava/lang/String;
    .locals 4

    .prologue
    .line 237
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 239
    :try_start_0
    const-string v2, ""

    .line 240
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->treeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 241
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v1, p1, :cond_0

    .line 244
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 245
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->urlPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 257
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 275
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onRequest(IIILjava/lang/Object;)I
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 282
    const v0, 0x2000020

    if-ne p1, v0, :cond_1

    .line 283
    if-ne p2, v8, :cond_1

    move-object v0, p4

    .line 284
    check-cast v0, Lcom/visualon/OSMPUtils/voOSTimedTag;

    .line 285
    if-nez v0, :cond_0

    .line 286
    const-string v0, "@@@voID3ContainerImpl"

    const-string v2, "VOOSMP_SRC_CB_Customer_Tag = null"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 327
    :goto_0
    return v0

    .line 290
    :cond_0
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSTimedTag;->Flag()I

    move-result v2

    if-nez v2, :cond_2

    .line 292
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/visualon/OSMPUtils/voID3ContainerImpl$2;

    invoke-direct {v3, p0, v0}, Lcom/visualon/OSMPUtils/voID3ContainerImpl$2;-><init>(Lcom/visualon/OSMPUtils/voID3ContainerImpl;Lcom/visualon/OSMPUtils/voOSTimedTag;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mID3listener:Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;

    if-eqz v0, :cond_4

    .line 325
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mID3listener:Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;->onSendID3Event(IIILjava/lang/Object;)I

    move-result v0

    goto :goto_0

    .line 307
    :cond_2
    invoke-virtual {p0}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 308
    iget-object v2, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    const v3, -0xf0ffffc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 310
    iget-object v3, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mEventHandler:Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;

    invoke-virtual {v3, v2}, Lcom/visualon/OSMPUtils/voID3ContainerImpl$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    :cond_3
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->addID3(Lcom/visualon/OSMPUtils/voOSTimedTag;)V

    .line 313
    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSTimedTag;->TimeStamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 314
    new-instance v3, Ljava/lang/String;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSTimedTag;->Data()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 315
    const-string v4, "@@@voID3ContainerImpl"

    const-string v5, "mTimedTagList customerTagWrap saving, Flag is %d, size is %d, timestamp is %d, %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSTimedTag;->Flag()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-interface {v0}, Lcom/visualon/OSMPUtils/voOSTimedTag;->Size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v8

    const/4 v0, 0x2

    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    const/4 v0, 0x3

    aput-object v3, v6, v0

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 318
    goto :goto_0

    :cond_4
    move v0, v1

    .line 327
    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    monitor-enter v1

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->customerTagList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 131
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFrameScrubbingUrl(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 136
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 138
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 140
    const-string v0, ""

    .line 141
    if-eqz v2, :cond_0

    .line 142
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 143
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 144
    aget-object v3, v2, v1

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 145
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 146
    const-string v4, ".m3u8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 147
    aget-object v0, v2, v1

    .line 152
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 154
    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mSourceUrl:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mSourceUrl:Ljava/lang/String;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 157
    if-ltz v1, :cond_1

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mSourceUrl:Ljava/lang/String;

    const/4 v4, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    const-string v1, "@@@voID3ContainerImpl"

    const-string v2, "VOOSMP_SRC_CB_Customer_Tag url = %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_1
    invoke-virtual {p0, v0}, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->setThumbnailURL(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 167
    return-void

    .line 142
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public setID3Listener(Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mID3listener:Lcom/visualon/OSMPUtils/voCustomerTagWrap$onID3Listener;

    .line 264
    return-void
.end method

.method public setSourceUrl(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mSourceUrl:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public setThumbnailURL(Ljava/lang/String;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v0, 0x0

    .line 172
    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 174
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 175
    const-string v2, "@@@voID3ContainerImpl"

    const-string v3, "Thumbnail PlayList download begin"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    .line 177
    const/4 v2, 0x0

    const-string v3, "/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->urlPath:Ljava/lang/String;

    .line 178
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 179
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 180
    if-eqz v1, :cond_1

    .line 182
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 185
    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 186
    if-lez v4, :cond_1

    .line 188
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    .line 227
    :try_start_1
    const-string v1, "@@@voID3ContainerImpl"

    const-string v2, "Thumbnail PlayList download Exception"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 232
    :goto_1
    return-void

    .line 191
    :cond_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 193
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 194
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 198
    if-eqz v1, :cond_4

    .line 200
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 201
    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 202
    if-eqz v2, :cond_4

    move v1, v0

    .line 204
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 206
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v9, :cond_2

    aget-object v3, v2, v0

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "#EXTINF:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_2

    .line 208
    aget-object v3, v2, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 209
    const-string v4, "\r"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 210
    const-string v4, ","

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    .line 213
    iget-object v4, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->treeMap:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v2, v6

    invoke-virtual {v4, v5, v6}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v4, "@@@voID3ContainerImpl"

    const-string v5, "Thumbnail PlayList item begin time = %d, url = %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    add-int/lit8 v8, v0, 0x1

    aget-object v8, v2, v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/visualon/OSMPUtils/voLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    add-int/2addr v1, v3

    .line 216
    add-int/lit8 v0, v0, 0x1

    .line 204
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->treeMap:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 223
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->treeMap:Ljava/util/TreeMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    :cond_4
    iget-object v0, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/visualon/OSMPUtils/voID3ContainerImpl;->mMutex:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
