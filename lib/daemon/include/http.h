#ifndef __HTTP_H__
#define __HTTP_H__

protected void create();
protected void Setup();
nosave void eventRead(int fd, string str);
private nosave void eventGetFile(int fd, string file);

#endif /* __HTTP_H__ */
