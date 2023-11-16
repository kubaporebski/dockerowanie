import hashlib
import secrets
import time

start = int(time.time()*1000.0)

a = []
for i in range(5000):
    m = hashlib.sha512()
    m.update(secrets.token_bytes(1024 * 1024))
    s = m.digest()
    if len(a) > 0:
        a.pop(0)
    a.append(s)

print(a)
end = int(time.time()*1000.0)
print("Czas " + str(end - start) + " ms")


